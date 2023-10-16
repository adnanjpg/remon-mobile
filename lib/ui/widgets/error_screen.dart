import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'error_widget.dart';
import 'go_home_btn.dart';

class ErrorScreen extends StatefulWidget {
  final Object? error;
  final StackTrace? stack;
  const ErrorScreen(this.error, this.stack, {Key? key}) : super(key: key);

  const ErrorScreen.error(this.error, {Key? key})
      : stack = null,
        super(key: key);
  ErrorScreen.routeError({Key? key})
      : stack = null,
        error = getStr('route_is_broken'),
        super(key: key);

  const ErrorScreen.empty({Key? key})
      : error = null,
        stack = null,
        super(key: key);

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  void didChangeDependencies() {
    logger.e(
      'Error screen',
      'Error Screen error: ${widget.error}',
      widget.stack,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: defPaddingAll,
              child: ErrWidget(
                widget.error,
                widget.stack,
              ),
            ),
            const GoHomeBtn(),
          ],
        ),
      ),
    );
  }
}
