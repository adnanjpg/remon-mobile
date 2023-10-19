import 'dart:convert';
import 'package:remon_mobile/app_runner.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';

import 'package:remon_mobile/features/app_init/models/app_init_state.dart';
import 'package:remon_mobile/features/app_init/models/app_settings.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../services/analytics_service.dart';

final appInitializerProv = Provider<AppInitProv>(AppInitProv.new);

// for some reason, when I make `appInitializerProv` a `StateNotifierProvider`,
// the state updates don't work. seperating the state and the state notifier
// fixes the issue.
final appInitStateProv = StateProvider<AppInitState>(
  (ref) => AppInitState.initial(),
);

final appSettingsProv = Provider((ref) => ref.watch(appInitStateProv).settings);

final appInitedProv = Provider<bool>(
  (ref) => ref.watch(appInitStateProv).isInited,
);

final wantsToAuthAfterIntroProv = StateProvider<bool>((ref) => false);

class AppInitProv {
  final Ref ref;

  bool _inited = false;
  bool _initing = false;

  bool get inited => _inited;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  AppInitProv(this.ref)
      : flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<bool> setAppOpened() async {
    try {
      var settings = ref.read(appInitStateProv).settings ?? AppSettings.empty();

      settings = settings.copyWith(
        isOpenedBefore: true,
      );

      await encodeSettings(settings);

      ref.read(appInitStateProv.notifier).update(
            (state) => state.copyWith(
              settings: settings,
            ),
          );

      return true;
    } catch (e) {
      logger.e(e);

      return false;
    }
  }

  Future<bool> encodeSettings(AppSettings settings) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      final json = jsonEncode(settings.toJson());

      prefs.setString('settings', json);

      return true;
    } catch (e) {
      logger.e(e);

      return false;
    }
  }

  Future<AppSettings> decodeSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      final json = prefs.getString('settings');

      if (json == null) {
        return AppSettings.empty();
      }

      final map = jsonDecode(json) as Map<String, dynamic>;

      return AppSettings.fromJson(map);
    } catch (e) {
      logger.e(e);

      return AppSettings.empty();
    }
  }

  Future<void> initForDefault() async {
    WidgetsFlutterBinding.ensureInitialized();

    try {
      if (_inited || _initing) {
        return;
      }
      _initing = true;

      // easy localization
      await initLocalization();

      var settings = await decodeSettings();

      // fb
      settings = await requestTracking(settings);
      encodeSettings(settings);

      await initFb();

      ref.read(appInitStateProv.notifier).update(
            (state) => state.copyWith(
              settings: settings,
              isInited: true,
            ),
          );

      _initing = false;
      _inited = true;
    } catch (e) {
      logger.e(e);
    } finally {}
  }

  Future<void> initForWidgetbook() async {
    WidgetsFlutterBinding.ensureInitialized();

    try {
      if (_inited || _initing) {
        return;
      }
      _initing = true;

      // easy localization
      await initLocalization();

      ref.read(appInitStateProv.notifier).update(
            (state) => state.copyWith(
              isInited: true,
            ),
          );

      _initing = false;
      _inited = true;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<void> initLocalization() async {
    await EasyLocalization.ensureInitialized();
  }

  Future<AppSettings> requestTracking(AppSettings settings) async {
    try {
      final appTrackStat =
          await AppTrackingTransparency.trackingAuthorizationStatus;

      // requesting tracking authorization may not bu supported
      if (appTrackStat == TrackingStatus.notSupported ||
          appTrackStat == TrackingStatus.restricted) {
        settings = settings.copyWith(
          userTrackingStatus: UserTrackingStatus.refused,
        );

        return settings;
      }

      // the user can change the tracking status from the settings
      // so if the user disables it when they restart the app, or
      // before even opening the app for the first time, we'll
      // handle it here
      if (appTrackStat == TrackingStatus.authorized) {
        settings = settings.copyWith(
          userTrackingStatus: UserTrackingStatus.approved,
        );

        return settings;
      }

      if (appTrackStat == TrackingStatus.denied) {
        settings = settings.copyWith(
          userTrackingStatus: UserTrackingStatus.refused,
        );

        return settings;
      }

      // only TrackingStatus left is `undetermined`
      // we'll handle platform difference in settings' object
      if (settings.userTrackingStatus.notAskedYet) {
        final stat =
            await AppTrackingTransparency.requestTrackingAuthorization();

        if (stat == TrackingStatus.authorized) {
          settings = settings.copyWith(
            userTrackingStatus: UserTrackingStatus.approved,
          );
        } else {
          settings = settings.copyWith(
            userTrackingStatus: UserTrackingStatus.refused,
          );
        }
      }
    } catch (e) {
      logger.e(e);
    }

    return settings;
  }

  Future<void> initFb() async {
    try {
      await Firebase.initializeApp(
        options: appConfig.firebaseOptionsInstance.currentPlatform,
      );
      logger.i('Firebase initializeApp done');

      // fcm
      {
        final fcmToken = await FirebaseMessaging.instance.getToken();
        debugPrint('fcmToken: $fcmToken');

        try {
          // ios and 13+ android requires permission requesting
          await FirebaseMessaging.instance.requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            provisional: false,
            sound: true,
          );
        } catch (e) {
          // i've came across some 13- androids throwing an exception here
          // as this is only required for ios and 13+ androids, we can safely ignore this
          logger.e(e);
        }
      }

      // crashlytics
      {
        FlutterError.onError = (errorDetails) {
          logger.e(errorDetails);
        };
        // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
        PlatformDispatcher.instance.onError = (error, stack) {
          logger.e(error, stack);
          return true;
        };
      }

      try {
        ref.read(fbAnalyticsProv).appOpened();
      } catch (e) {
        logger.e(e);
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
