import 'package:flutter/material.dart';

import 'loading_widget.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen() : super(key: const ValueKey('LoadingScreen'));

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoadingWidget(),
      ),
    );
  }
}
