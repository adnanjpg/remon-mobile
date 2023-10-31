import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:remon_mobile/widgetbook/widgetbook_wrapper.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class PrimaryField extends StatefulWidget {
  const PrimaryField({
    super.key,
    this.initialValue,
    this.value,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.minLines,
    this.maxLines,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.onTap,
    this.enabled = true,
    this.enabledStyle = false,
    this.textAlign = TextAlign.start,
    this.contentPadding,
    this.style,
    this.inputFormatters,
    this.focusNode,
  });
  final String? initialValue;

  /// this will always be up to date.
  /// use only for uneditable fields
  /// like date picker, as it will
  /// rebuild the field on each value
  /// change. for normal fields, use
  /// `initialValue` instead.
  final String? value;
  final String? hintText;
  final String? labelText;
  final void Function(String)? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;

  final int? minLines;
  final int? maxLines;

  final Widget? icon;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  final bool isPassword;

  final VoidCallback? onTap;

  final bool enabled;

  /// maybe we wanna disable `enbaled`
  /// (making our own action on `onTap`
  /// for example e.g. show a date picker)
  /// but we still wanna show the enabled
  /// look of the field
  final bool enabledStyle;

  final TextAlign textAlign;

  final TextStyle? style;

  final EdgeInsetsGeometry? contentPadding;

  @override
  State<PrimaryField> createState() => _PrimaryFieldState();
}

class _PrimaryFieldState extends State<PrimaryField> {
  late TextEditingController con;

  @override
  void initState() {
    con = TextEditingController(
      text: widget.initialValue ?? widget.value,
    );
    obscureText = widget.isPassword;

    con.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PrimaryField oldWidget) {
    // parents who call this widget will always pass the up to
    // date value as `initialValue`, so we're protecting ourselves
    // from reinitializing the controller with the same value,
    // which will cause the cursor to jump to the start of the text
    // and may cause other issues.
    //
    // we only wanna reinitialize the controller if the parent totally
    // controls the value of the field, for example a date picker field.
    //
    // setting con.text doesn't work because `TextEditingController` is
    // a `ValueNotifier` and it will cause another build during the build
    // which wll cause an error.
    if (con.text != widget.value && oldWidget.value != widget.value) {
      con = TextEditingController(text: widget.value);
    }
    super.didUpdateWidget(oldWidget);
  }

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    // final _enabledStyle = widget.enabled || widget.enabledStyle;

    final suffix = widget.suffixIcon ??
        (widget.isPassword
            ? _PassButton(
                obscureText: obscureText,
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
              )
            : null);

    final currentVal = con.text;
    final error = widget.validator?.call(currentVal);
    final hasError = error != null;

    // final isDone = !hasError && currentVal.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Text(
            widget.labelText!,
            style: TextStyle(
              color: Theme.of(context).primaryFieldLabelColor,
              fontSize: 18,
              fontWeight: Theme.of(context).fontWeightMedium,
            ),
          ),
        InkWell(
          onTap: widget.onTap == null
              ? null
              : () {
                  // we want the previous focused node to be unfocused
                  // so if for example we open a date picker, once we
                  // close it, the field will be unfocused
                  FocusScope.of(context).unfocus();

                  widget.onTap!();
                },
          overlayColor: MaterialStateProperty.all(
            Theme.of(context).primaryFieldTapOverlayColor,
          ),
          child: TextFormField(
            focusNode: widget.focusNode,
            controller: con,
            obscureText: obscureText,
            textAlign: widget.textAlign,
            style: widget.style ??
                TextStyle(
                  color: hasError
                      ? Theme.of(context).primaryFieldErrorColor
                      : Theme.of(context).primaryFieldTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
            textInputAction: widget.textInputAction,
            decoration: InputDecoration(
              contentPadding: widget.contentPadding,
              icon: widget.icon,
              prefixIcon: widget.prefixIcon,
              suffixIcon: suffix,
              iconColor: Theme.of(context).primaryFieldIconColor,
              errorMaxLines: 3,
              enabled: widget.enabled,
              fillColor: Theme.of(context).primaryFieldBgColor,
              filled: true,
              errorStyle: TextStyle(
                color: Theme.of(context).primaryFieldErrorColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  color: Theme.of(context).primaryFieldBorderColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  color: Theme.of(context).primaryFieldBorderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  color: Theme.of(context).primaryFieldBorderColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  color: Theme.of(context).primaryFieldBorderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  color: Theme.of(context).primaryFieldBorderColor,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 0,
                  color: Theme.of(context).primaryFieldBorderColor,
                ),
              ),
            ),
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onSubmitted,
            validator: widget.validator,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            minLines: widget.minLines,
            maxLines: obscureText ? 1 : widget.maxLines,
          ),
        ),
        if (!hasError && widget.hintText != null)
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: defPaddingSize,
            ),
            child: Text(
              widget.hintText!,
              style: TextStyle(
                color: Theme.of(context).primaryFieldHintColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
      ].joinWidgetList(
        (index) => const SizedBox(
          height: halfDefPaddingSize,
        ),
      ),
    );
  }
}

class _PassButton extends StatelessWidget {
  const _PassButton({
    required this.onPressed,
    required this.obscureText,
  });
  final VoidCallback onPressed;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        obscureText ? Icons.visibility : Icons.visibility_off,
        color: Theme.of(context).primaryFieldIconColor,
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Primary Field',
  type: PrimaryField,
)
Widget primaryFieldUseCase(BuildContext context) {
  final formK = GlobalKey<FormState>();
  Future.delayed(
    const Duration(milliseconds: 50),
    () {
      formK.currentState!.validate();
    },
  );

  return WidgetbookWrapper(
    child: Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      child: Form(
        key: formK,
        child: Column(
          children: [
            const PrimaryField(
              labelText: 'Widgetbook Primary field',
              hintText: 'Hint text here',
            ),
            const PrimaryField(
              labelText: 'Widgetbook Primary field',
              hintText: 'Hint text here',
              enabled: false,
            ),
            PrimaryField(
              labelText: 'Widgetbook Primary field',
              hintText: 'Hint text here',
              focusNode: FocusNode()..requestFocus(),
            ),
            const PrimaryField(
              labelText: 'Widgetbook Primary field',
              hintText: 'Hint text here',
              initialValue: 'initial value',
            ),
            PrimaryField(
              labelText: 'Widgetbook Primary field',
              hintText: 'Hint text here',
              validator: (_) {
                return 'error';
              },
            ),
          ].joinWidgetList(
            (index) => const SizedBox(
              height: 20,
            ),
          ),
        ),
      ),
    ),
  );
}
