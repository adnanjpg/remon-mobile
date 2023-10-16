import 'package:flutter/material.dart';

import '../../utils/utils.dart';

// naming like this bcz there already a Widget named `ErrorWidget` in flutter
class ErrWidget extends StatelessWidget {
  final Object? error;
  final StackTrace? stack;
  const ErrWidget(this.error, this.stack, {Key? key}) : super(key: key);

  const ErrWidget.error(this.error, {Key? key})
      : stack = null,
        super(key: key);

  const ErrWidget.empty({Key? key})
      : error = '',
        stack = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final er = error?.toString() ?? '';

    if (er.isEmpty) {
      return Text(
        getStr('err_widget:error_occured'),
        style: Theme.of(context).textTheme.headlineMedium,
      );
    }

    return Text(
      error.toString(),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
