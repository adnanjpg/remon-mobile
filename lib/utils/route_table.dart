// gorouter wants me to use
// GoRouter.of(context).namedLocation instead
// of state.namedLocation but that one throws error
// and I dont really have time for this right now
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../ui/widgets/error_screen.dart';

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

class RouteTable {
  RouteTable._();

  static const String
      //
      rLoginScreen = 'login_screen'
      //
      ;

  static const String
      //
      rSplashScreen = 'splash_screen',
      rErrorScreen = 'error_screen',
      rLoadingScreen = 'loading_screen'
      //
      ;

  static const String initialLocation = '/';

  static final routerProvider = Provider.autoDispose<GoRouter>(
    (ref) {
      final key = ref.watch(navKeyProv);

      return GoRouter(
        navigatorKey: key,
        debugLogDiagnostics: true,
        initialLocation: initialLocation,
        routes: [],
        errorBuilder: (context, state) {
          return ErrorScreen.routeError();
        },
      );
    },
  );
}

extension GR on GoRouter {
  void onPop(VoidCallback onPop) {
    final loc = location;

    listener() async {
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
