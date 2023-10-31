import 'package:flutter/material.dart';

import 'package:remon_mobile/ui/widgets/loading_widget.dart';

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
