import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget() : super(key: const ValueKey('LoadingWidget'));

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: 'loading_widget_hero',
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
