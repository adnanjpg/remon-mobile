import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.g.dart';
part 'app_settings.freezed.dart';

enum UserTrackingStatus {
  notAsked,
  approved,
  refused;

  bool get notAskedYet => this == UserTrackingStatus.notAsked;
  bool get isApproved => this == UserTrackingStatus.approved;
}

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    required bool isOpenedBefore,
    required UserTrackingStatus userTrackingStatus,
  }) = _AppSettings;

  factory AppSettings.empty() => AppSettings(
        isOpenedBefore: false,
        // we'll ask for permission only on ios,
        // on other platforms, we'll assume the
        // user has already given permission
        userTrackingStatus: !kIsWeb && Platform.isIOS
            ? UserTrackingStatus.notAsked
            : UserTrackingStatus.approved,
      );

  // from json
  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
