import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/analytics_service.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart' show WidgetRef;

const widgetBookBtnsKey = 'WIDGETBOOK';

class AppBtnInterface extends ConsumerStatefulWidget {
  final VoidCallback? _onPressed;
  final String buttonName;
  final String eventName;

  const AppBtnInterface({
    Key? key,
    required VoidCallback? onPressed,
    required this.buttonName,
    required this.eventName,
  })  : _onPressed = onPressed,
        super(key: key);

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
      _onPressed?.call();
    };
  }

  ConsumerState<AppBtnInterface> createState() => throw UnimplementedError();
}
