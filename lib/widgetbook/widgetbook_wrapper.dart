import 'package:flutter/material.dart';

class WidgetbookWrapper extends StatelessWidget {
  const WidgetbookWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: child,
    );
  }
}
