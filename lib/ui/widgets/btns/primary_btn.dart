import 'package:remon_mobile/ui/widgets/btns/app_btn_interface.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:remon_mobile/widgetbook/widgetbook_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

enum ButtonSize { S, M, L }

class PrimaryBtn extends AppBtnInterface {
  final ButtonSize size;
  final Widget? child;
  final String? text;
  final bool isExpanded;
  final IconData? suffixIcon;
  final EdgeInsets? padding;
  const PrimaryBtn._({
    super.key,
    super.onPressed,
    this.text,
    this.child,
    this.isExpanded = false,
    required super.eventName,
    required this.size,
    this.suffixIcon,
    this.padding,
  })  : assert(
          (text != null || child != null) && (text == null || child == null),
        ),
        super(
          buttonName: 'PrimaryBtn',
        );

  const PrimaryBtn.small({
    Key? key,
    VoidCallback? onPressed,
    required String eventName,
    String? text,
    Widget? child,
    bool isExpanded = false,
    IconData? suffixIcon,
    EdgeInsets? padding,
  }) : this._(
          key: key,
          onPressed: onPressed,
          eventName: eventName,
          text: text,
          child: child,
          isExpanded: isExpanded,
          size: ButtonSize.S,
          suffixIcon: suffixIcon,
          padding: padding,
        );

  const PrimaryBtn.medium({
    Key? key,
    VoidCallback? onPressed,
    required String eventName,
    String? text,
    Widget? child,
    bool isExpanded = false,
    IconData? suffixIcon,
    EdgeInsets? padding,
  }) : this._(
          key: key,
          onPressed: onPressed,
          eventName: eventName,
          text: text,
          child: child,
          isExpanded: isExpanded,
          size: ButtonSize.M,
          suffixIcon: suffixIcon,
          padding: padding,
        );

  const PrimaryBtn.large({
    Key? key,
    VoidCallback? onPressed,
    required String eventName,
    String? text,
    Widget? child,
    bool isExpanded = false,
    IconData? suffixIcon,
    EdgeInsets? padding,
  }) : this._(
          key: key,
          onPressed: onPressed,
          eventName: eventName,
          text: text,
          child: child,
          isExpanded: isExpanded,
          size: ButtonSize.L,
          suffixIcon: suffixIcon,
          padding: padding,
        );

  @override
  ConsumerState<PrimaryBtn> createState() => _PrimaryBtnState();
}

class _PrimaryBtnState extends ConsumerState<PrimaryBtn> {
  bool get hasIcon => widget.child == null && widget.suffixIcon != null;

  T getValueFor<T>({
    required T s,
    required T m,
    required T l,
  }) {
    switch (widget.size) {
      case ButtonSize.S:
        return s;
      case ButtonSize.M:
        return m;
      case ButtonSize.L:
        return l;
    }
  }

  Size get minimumSize {
    if (hasIcon) {
      return getValueFor(
        s: const Size(118, 40),
        m: const Size(151, 52),
        l: const Size(210, 65),
      );
    }

    return getValueFor(
      s: const Size(94, 40),
      m: const Size(119, 52),
      l: const Size(170, 65),
    );
  }

  double get suffixIconSize {
    return getValueFor(
      s: 16,
      m: 20,
      l: 32,
    );
  }

  EdgeInsets? get padding {
    if (widget.padding != null) {
      return widget.padding!;
    }

    return null;

    // return getValueFor(
    //   s: const EdgeInsets.symmetric(
    //     vertical: 24,
    //     horizontal: 32,
    //   ),
    //   m: const EdgeInsets.symmetric(
    //     vertical: 28,
    //     horizontal: 48,
    //   ),
    //   l: const EdgeInsets.symmetric(
    //     vertical: 32,
    //     horizontal: 64,
    //   ),
    // );
  }

  BorderRadius get radius {
    return getValueFor(
      s: BorderRadius.circular(12),
      m: BorderRadius.circular(16),
      l: BorderRadius.circular(20),
    );
  }

  double get fontSize {
    return getValueFor(
      s: 14,
      m: 16,
      l: 24,
    );
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
                      fontWeight: FontWeight.bold,
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
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Buttons',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryBtn.small(
                                text: 'BUTTON',
                                onPressed: () {},
                                eventName: widgetBookBtnsKey,
                              ),
                              PrimaryBtn.small(
                                text: 'BUTTON',
                                onPressed: () {},
                                eventName: widgetBookBtnsKey,
                                suffixIcon: Icons.check_circle,
                              ),
                            ].joinWidgetList(
                              (index) => const SizedBox(
                                height: 24,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryBtn.medium(
                                text: 'BUTTON',
                                onPressed: () {},
                                eventName: widgetBookBtnsKey,
                              ),
                              PrimaryBtn.medium(
                                text: 'BUTTON',
                                onPressed: () {},
                                eventName: widgetBookBtnsKey,
                                suffixIcon: Icons.check_circle,
                              ),
                            ].joinWidgetList(
                              (index) => const SizedBox(
                                height: 24,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryBtn.large(
                                text: 'BUTTON',
                                onPressed: () {},
                                eventName: widgetBookBtnsKey,
                              ),
                              PrimaryBtn.large(
                                text: 'BUTTON',
                                onPressed: () {},
                                eventName: widgetBookBtnsKey,
                                suffixIcon: Icons.check_circle,
                              ),
                            ].joinWidgetList(
                              (index) => const SizedBox(
                                height: 24,
                              ),
                            ),
                          ),
                        ].joinWidgetList(
                          (index) => const SizedBox(
                            height: 48,
                          ),
                        ),
                      ),
                    ].joinWidgetList(
                      (index) => const SizedBox(
                        height: 30,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Disabled Buttons',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              PrimaryBtn.small(
                                text: 'BUTTON',
                                eventName: widgetBookBtnsKey,
                              ),
                              PrimaryBtn.small(
                                text: 'BUTTON',
                                eventName: widgetBookBtnsKey,
                                suffixIcon: Icons.check_circle,
                              ),
                            ].joinWidgetList(
                              (index) => const SizedBox(
                                height: 24,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              PrimaryBtn.medium(
                                text: 'BUTTON',
                                eventName: widgetBookBtnsKey,
                              ),
                              PrimaryBtn.medium(
                                text: 'BUTTON',
                                eventName: widgetBookBtnsKey,
                                suffixIcon: Icons.check_circle,
                              ),
                            ].joinWidgetList(
                              (index) => const SizedBox(
                                height: 24,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              PrimaryBtn.large(
                                text: 'BUTTON',
                                eventName: widgetBookBtnsKey,
                              ),
                              PrimaryBtn.large(
                                text: 'BUTTON',
                                eventName: widgetBookBtnsKey,
                                suffixIcon: Icons.check_circle,
                              ),
                            ].joinWidgetList(
                              (index) => const SizedBox(
                                height: 24,
                              ),
                            ),
                          ),
                        ].joinWidgetList(
                          (index) => const SizedBox(
                            height: 48,
                          ),
                        ),
                      ),
                    ].joinWidgetList(
                      (index) => const SizedBox(
                        height: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Full width',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Column(
                  children: [
                    const PrimaryBtn.large(
                      text: 'BUTTON',
                      eventName: widgetBookBtnsKey,
                      isExpanded: true,
                    ),
                    const PrimaryBtn.large(
                      text: 'BUTTON',
                      eventName: widgetBookBtnsKey,
                      isExpanded: true,
                      suffixIcon: Icons.check_circle,
                    ),
                    PrimaryBtn.large(
                      text: 'BUTTON',
                      onPressed: () {},
                      eventName: widgetBookBtnsKey,
                      isExpanded: true,
                    ),
                    PrimaryBtn.large(
                      text: 'BUTTON',
                      onPressed: () {},
                      eventName: widgetBookBtnsKey,
                      isExpanded: true,
                      suffixIcon: Icons.check_circle,
                    ),
                  ].joinWidgetList(
                    (index) => const SizedBox(
                      height: 48,
                    ),
                  ),
                ),
              ].joinWidgetList(
                (index) => const SizedBox(
                  height: 30,
                ),
              ),
            ),
          ].joinWidgetList(
            (index) => const SizedBox(
              height: 48,
            ),
          ),
        ),
      ),
    );
