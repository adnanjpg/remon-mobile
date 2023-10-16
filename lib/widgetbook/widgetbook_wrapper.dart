import 'package:flutter/material.dart';

class WidgetbookWrapper extends StatelessWidget {
  final Widget child;
  const WidgetbookWrapper({Key? key, required this.child}) : super(key: key);

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
