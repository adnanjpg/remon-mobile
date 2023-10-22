import 'package:remon_mobile/ui/widgets/error_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'app.dart';
import 'firebase_options/firebase_options.dart';

enum Flavor {
  LOCALDEV,
  DEV,
  PROD;

  bool get isLocalDev => this == Flavor.LOCALDEV;
}

late _AppConfig appConfig;

class _AppConfig {
  final String deepLinksHost;
  final String androidBundleId;
  final String iosBundleId;
  final DefaultFirebaseOptions firebaseOptionsInstance;
  final String hostUrl;
  final Flavor _flavor;

  bool get isLocalDev => kDebugMode && _flavor.isLocalDev;

  _AppConfig._({
    required this.deepLinksHost,
    required this.androidBundleId,
    required this.iosBundleId,
    required this.firebaseOptionsInstance,
    required this.hostUrl,
    required Flavor flavor,
  }) : _flavor = flavor;

  factory _AppConfig.fromFlavor(Flavor flavor) {
    switch (flavor) {
      case Flavor.LOCALDEV:
        return _AppConfig._localdev();
      case Flavor.DEV:
        return _AppConfig._dev();
      case Flavor.PROD:
        return _AppConfig._prod();
    }
  }

  _AppConfig._prod()
      : this._(
          flavor: Flavor.PROD,
          deepLinksHost: 'https://remon_mobile.page.link',
          androidBundleId: 'com.remonmobile',
          iosBundleId: 'com.remonmobile',
          firebaseOptionsInstance: defaultFirebaseOptions(Flavor.PROD),
          hostUrl: 'http://10.0.2.2:8080',
        );

  _AppConfig._localdev()
      : this._(
          flavor: Flavor.LOCALDEV,
          deepLinksHost: 'https://remon_mobiledevelopment.page.link',
          androidBundleId: 'com.remonmobile.dev',
          iosBundleId: 'com.remonmobile.dev',
          firebaseOptionsInstance: defaultFirebaseOptions(Flavor.LOCALDEV),
          hostUrl: 'http://10.0.2.2:8080',
        );

  _AppConfig._dev()
      : this._(
          flavor: Flavor.DEV,
          deepLinksHost: 'https://remon_mobiledevelopment.page.link',
          androidBundleId: 'com.remonmobile.dev',
          iosBundleId: 'com.remonmobile.dev',
          firebaseOptionsInstance: defaultFirebaseOptions(Flavor.DEV),
          hostUrl: 'http://10.0.2.2:8080',
        );
}

void appRunner(Flavor flavor) async {
  errorCatcher();

  appConfig = _AppConfig.fromFlavor(flavor);

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
