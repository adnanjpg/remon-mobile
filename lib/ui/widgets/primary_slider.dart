import 'package:remon_mobile/utils/app_theme.dart';
import 'package:remon_mobile/utils/utils.dart';
import 'package:remon_mobile/widgetbook/widgetbook_wrapper.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class PrimarySlider extends StatefulWidget {
  final double? value;
  final double minValue;
  final double maxValue;
  final Function(double?)? onChanged;

  const PrimarySlider({
    super.key,
    required this.value,
    required this.onChanged,
    required this.minValue,
    required this.maxValue,
  });

  @override
  State<PrimarySlider> createState() => _PrimarySliderState();
}

class _PrimarySliderState extends State<PrimarySlider> {
  @override
  Widget build(BuildContext context) {
    final divisionCount = (widget.maxValue - widget.minValue).toInt();
    return Container(
      margin: const EdgeInsets.only(
        top: doubleDefPaddingSize,
      ),
      child: Slider(
        value: widget.value ?? 0,
        min: widget.minValue,
        max: widget.maxValue,
        onChanged: (value) {
          widget.onChanged?.call(value);
        },
        activeColor: Theme.of(context).primarySliderActiveColor,
        inactiveColor: Theme.of(context).primarySliderInactiveColor,
        thumbColor: Theme.of(context).primarySliderThumbColor,
        divisions: divisionCount,
        label: widget.value?.toInt().toString() ?? '',
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Primary Slider',
  type: PrimarySlider,
)
Widget PrimarySliderUseCase(BuildContext context) {
  return const WidgetbookWrapper(
    child: Column(
      children: [
        _PrimarySliderUseCase1(),
      ],
    ),
  );
}

class _PrimarySliderUseCase1 extends StatefulWidget {
  const _PrimarySliderUseCase1();

  @override
  State<_PrimarySliderUseCase1> createState() => _PrimarySliderUseCase1State();
}

class _PrimarySliderUseCase1State extends State<_PrimarySliderUseCase1> {
  double value = 10;

  @override
  Widget build(BuildContext context) {
    return PrimarySlider(
      value: value,
      minValue: 0,
      maxValue: 100,
      onChanged: (val) {
        value = val ?? 0;

        setState(() {});
      },
    );
  }
}
