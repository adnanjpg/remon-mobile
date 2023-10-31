// gorouter wants me to use
// GoRouter.of(context).namedLocation instead
// of state.namedLocation but that one throws error
// and I dont really have time for this right now
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remon_mobile/features/devices/models/device_model.dart';
import 'package:remon_mobile/features/devices/ui/add_device_screen.dart';

import 'package:remon_mobile/features/home/ui/bottom_nav_screen.dart';
import 'package:remon_mobile/features/home/ui/splash_screen.dart';
import 'package:remon_mobile/services/local_db_service.dart';
import 'package:remon_mobile/ui/widgets/error_screen.dart';
import 'package:remon_mobile/ui/widgets/loading_screen.dart';

export 'package:go_router/go_router.dart' show GoRouter;

typedef GoRouterWidgetBuilder = Widget Function(
  BuildContext context,
  GoRouterState state,
);

final navKeyProv = Provider(
  (_) => GlobalKey<NavigatorState>(),
);

final shellKeyPRov = Provider(
  (_) => GlobalKey<NavigatorState>(),
);

final hasAnyDeviceProv = StreamProvider(
  (ref) {
    final hasAnyDeviceStream = ref.watch(localDbService).watchHasAnyDevice();

    return hasAnyDeviceStream;
  },
);

class RouteTable {
  RouteTable._();

  static const String rAddDeviceScreen = 'add_device_screen';
  static const String rHome = 'home_screen';

  static const String rSplashScreen = 'splash_screen';
  static const String rErrorScreen = 'error_screen';
  static const String rLoadingScreen = 'loading_screen';

  static const String initialLocation = '/';

  static GoRoute _mainRoute(AutoDisposeProviderRef<GoRouter> ref) => GoRoute(
        name: rSplashScreen,
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
        routes: [
          GoRoute(
            name: rHome,
            path: 'home',
            builder: (context, state) {
              return const BottomNavScreen();
            },
          ),
          GoRoute(
            name: rAddDeviceScreen,
            path: 'add_device',
            builder: (context, state) {
              final extra = state.extra as Map<String, dynamic>?;
              final device = extra?['device'] as DeviceModel?;

              return AddDeviceScreen(
                device: device,
              );
            },
          ),
          GoRoute(
            name: rErrorScreen,
            path: 'error',
            builder: (context, state) => const ErrorScreen.empty(),
          ),
          GoRoute(
            name: rLoadingScreen,
            path: 'loading',
            builder: (context, state) => const LoadingScreen(),
          ),
        ],
      );

  static final routerProvider = Provider.autoDispose<GoRouter>(
    (ref) {
      final key = ref.watch(navKeyProv);

      final hasDev = ref.watch(hasAnyDeviceProv).value ?? false;

      return GoRouter(
        navigatorKey: key,
        debugLogDiagnostics: true,
        initialLocation: hasDev ? '/home' : '/add_device',
        routes: [
          _mainRoute(ref),
        ],
        errorBuilder: (context, state) {
          return ErrorScreen.routeError();
        },
        redirect: (context, state) {
          const splashLoc = '/';
          final homeLoc = state.namedLocation(rHome);

          if (state.location == splashLoc) {
            return homeLoc;
          }

          return null;
        },
      );
    },
  );
}

extension GR on GoRouter {
  void onPop(VoidCallback onPop) {
    final loc = location;

    Future<void> listener() async {
      if (location == loc) {
        onPop();
        removeListener(listener);
      }
    }

    addListener(listener);
  }

  void popUntilLocation(String location) {
    while (this.location != location) {
      if (isInitial || !canPop()) {
        break;
      }
      pop();
    }
  }

  void popUntil(bool Function(String location) condition) {
    while (!condition(location)) {
      if (isInitial || !canPop()) {
        break;
      }
      pop();
    }
  }

  void popUntilInitial() {
    while (!isInitial && canPop()) {
      pop();
    }
  }

  bool get isInitial {
    return location == RouteTable.initialLocation;
  }
}
