import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:remon_mobile/app.dart';
import 'package:remon_mobile/firebase_options/firebase_options.dart';
import 'package:remon_mobile/ui/widgets/error_screen.dart';
import 'package:remon_mobile/utils/utils.dart';

enum Flavor {
  localDev,
  dev,
  prod;

  bool get isLocalDev => this == Flavor.localDev;
}

late AppConfig appConfig;

class AppConfig {
  AppConfig._prod()
      : this._(
          flavor: Flavor.prod,
          deepLinksHost: 'https://remon_mobile.page.link',
          androidBundleId: 'com.remonmobile',
          iosBundleId: 'com.remonmobile',
          firebaseOptionsInstance: defaultFirebaseOptions(Flavor.prod),
          hostUrl: 'http://10.0.2.2:8080',
        );

  AppConfig._localdev()
      : this._(
          flavor: Flavor.localDev,
          deepLinksHost: 'https://remon_mobiledevelopment.page.link',
          androidBundleId: 'com.remonmobile.dev',
          iosBundleId: 'com.remonmobile.dev',
          firebaseOptionsInstance: defaultFirebaseOptions(Flavor.localDev),
          hostUrl: 'http://10.0.2.2:8080',
        );

  AppConfig._dev()
      : this._(
          flavor: Flavor.dev,
          deepLinksHost: 'https://remon_mobiledevelopment.page.link',
          androidBundleId: 'com.remonmobile.dev',
          iosBundleId: 'com.remonmobile.dev',
          firebaseOptionsInstance: defaultFirebaseOptions(Flavor.dev),
          hostUrl: 'http://10.0.2.2:8080',
        );
  factory AppConfig.fromFlavor(Flavor flavor) {
    switch (flavor) {
      case Flavor.localDev:
        return AppConfig._localdev();
      case Flavor.dev:
        return AppConfig._dev();
      case Flavor.prod:
        return AppConfig._prod();
    }
  }
  AppConfig._({
    required this.deepLinksHost,
    required this.androidBundleId,
    required this.iosBundleId,
    required this.firebaseOptionsInstance,
    required this.hostUrl,
    required Flavor flavor,
  }) : _flavor = flavor;
  final String deepLinksHost;
  final String androidBundleId;
  final String iosBundleId;
  final DefaultFirebaseOptions firebaseOptionsInstance;
  final String hostUrl;
  final Flavor _flavor;

  bool get isLocalDev => kDebugMode && _flavor.isLocalDev;
}

Future<void> appRunner(Flavor flavor) async {
  errorCatcher();

  appConfig = AppConfig.fromFlavor(flavor);

  // provider scope is provided inside
  // `TheApp` widget
  // ignore: missing_provider_scope
  runApp(const TheApp());
}

void errorCatcher() {
  ErrorWidget.builder = (details) {
    // log to crashlytics and then build
    // the error widget

    logger.e(details);

    return const ErrorScreen.empty();

    // the rest of error catching is handled in app init
  };
}
