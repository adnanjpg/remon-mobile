import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remon_mobile/services/analytics_service.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart' show WidgetRef;

const widgetBookBtnsKey = 'WIDGETBOOK';

class AppBtnInterface extends ConsumerStatefulWidget {
  const AppBtnInterface({
    required VoidCallback? onPressed,
    required this.buttonName,
    required this.eventName,
    super.key,
  }) : _onPressed = onPressed;

  final VoidCallback? _onPressed;
  final String buttonName;
  final String eventName;

  VoidCallback? onPressed(WidgetRef ref) {
    if (_onPressed == null) {
      return null;
    }

    return () {
      if (eventName != widgetBookBtnsKey) {
        ref.read(fbAnalyticsProv).buttonPressed(
              buttonName,
              eventName,
            );
      }

      _onPressed.call();
    };
  }

  @override
  // ignore: no_logic_in_create_state
  ConsumerState<AppBtnInterface> createState() => throw UnimplementedError();
}
