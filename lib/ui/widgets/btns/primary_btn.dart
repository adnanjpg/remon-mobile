import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/ui/widgets/btns/app_btn_interface.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:remon_mobile/widgetbook/widgetbook_wrapper.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class PrimaryBtn extends AppBtnInterface {
  const PrimaryBtn({
    required super.eventName,
    super.key,
    super.onPressed,
    this.text,
    this.child,
    this.isExpanded = false,
    this.suffixIcon,
    this.padding,
  })  : assert(
          (text != null || child != null) && (text == null || child == null),
          'You can only pass text or child',
        ),
        super(
          buttonName: 'PrimaryBtn',
        );
  final Widget? child;
  final String? text;
  final bool isExpanded;
  final IconData? suffixIcon;
  final EdgeInsets? padding;

  @override
  ConsumerState<PrimaryBtn> createState() => _PrimaryBtnState();
}

class _PrimaryBtnState extends ConsumerState<PrimaryBtn> {
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
    return BorderRadius.circular(12);
  }

  double get fontSize {
    return 18;
  }

  bool get enabled => _onPressed != null;

  List<BoxShadow> boxShadow(BuildContext context) {
    return [];
  }

  VoidCallback? get _onPressed => widget.onPressed(ref);

  bool isPressed = false;
  void onPointerDown(PointerDownEvent event) {
    if (!enabled) return;
    setState(() {
      isPressed = true;
    });
  }

  void onPointerUp(PointerUpEvent event) {
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
            backgroundColor: Theme.of(context).primaryButtonBgColor,
            disabledBackgroundColor:
                Theme.of(context).primaryButtonDisabledBgColor,
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
                      color: Theme.of(context).primaryButtonTextColor,
                      fontSize: fontSize,
                      fontWeight: Theme.of(context).fontWeightMedium,
                    ),
                  ),
              if (hasIcon) ...[
                const SizedBox(
                  width: defPaddingSize,
                ),
                Icon(
                  widget.suffixIcon,
                  color: Theme.of(context).primaryButtonTextColor,
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
  type: PrimaryBtn,
)
Widget primaryBtnUseCase(BuildContext context) => WidgetbookWrapper(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ListView(
          children: [
            PrimaryBtn(
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
