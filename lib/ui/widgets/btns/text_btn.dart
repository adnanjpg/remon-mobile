import 'package:remon_mobile/ui/widgets/btns/app_btn_interface.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:remon_mobile/widgetbook/widgetbook_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class TextBtn extends AppBtnInterface {
  final Widget? child;
  final String? text;
  final bool isExpanded;
  final IconData? suffixIcon;
  final EdgeInsets? padding;
  const TextBtn({
    super.key,
    super.onPressed,
    this.text,
    this.child,
    this.isExpanded = false,
    required super.eventName,
    this.suffixIcon,
    this.padding,
  })  : assert(
          (text != null || child != null) && (text == null || child == null),
        ),
        super(
          buttonName: 'TextBtn',
        );

  @override
  ConsumerState<TextBtn> createState() => _TextBtnState();
}

class _TextBtnState extends ConsumerState<TextBtn> {
  bool get hasIcon => widget.child == null && widget.suffixIcon != null;

  Size get minimumSize {
    if (hasIcon) {
      return const Size(151, 52);
    }

    return const Size(119, 52);
  }

  double get suffixIconSize {
    return 20;
  }

  EdgeInsets? get padding {
    if (widget.padding != null) {
      return widget.padding!;
    }

    return null;
  }

  BorderRadius get radius {
    return BorderRadius.circular(16);
  }

  double get fontSize {
    return 16;
  }

  bool get enabled => _onPressed != null;

  List<BoxShadow> boxShadow(BuildContext context) {
    return [];
  }

  VoidCallback? get _onPressed => widget.onPressed(ref);

  bool isPressed = false;
  void onPointerDown(PointerDownEvent) {
    if (!enabled) return;
    setState(() {
      isPressed = true;
    });
  }

  void onPointerUp(PointerUpEvent) {
    if (!enabled) return;
    setState(() {
      isPressed = false;
    });
  }

  BorderSide get side {
    return const BorderSide(color: Colors.transparent);
  }

  @override
  Widget build(BuildContext context) {
    final body = Container(
      decoration: BoxDecoration(
        boxShadow: boxShadow(context),
        borderRadius: radius,
      ),
      child: Listener(
        onPointerDown: onPointerDown,
        onPointerUp: onPointerUp,
        child: TextButton(
          onPressed: _onPressed,
          style: TextButton.styleFrom(
            minimumSize: minimumSize,
            shape: RoundedRectangleBorder(
              borderRadius: radius,
              side: side,
            ),
            elevation: 0,
            padding: padding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.child ??
                  Text(
                    widget.text!,
                    style: TextStyle(
                      color: Theme.of(context).textButtonTextColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              if (hasIcon) ...[
                const SizedBox(
                  width: defPaddingSize,
                ),
                Icon(
                  widget.suffixIcon,
                  color: Theme.of(context).textButtonTextColor,
                  size: suffixIconSize,
                ),
              ],
            ],
          ),
        ),
      ),
    );

    return Container(
      margin: quartDefPaddingHor,
      child: Row(
        children: [
          if (widget.isExpanded) Expanded(child: body) else body,
        ],
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Primary Button',
  type: TextBtn,
)
Widget TextBtnUseCase(BuildContext context) => WidgetbookWrapper(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ListView(
          children: [
            TextBtn(
              text: 'BUTTON',
              onPressed: () {},
              eventName: widgetBookBtnsKey,
            ),
          ].joinWidgetList(
            (index) => const SizedBox(
              height: 48,
            ),
          ),
        ),
      ),
    );
