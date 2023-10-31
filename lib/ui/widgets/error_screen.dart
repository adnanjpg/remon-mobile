import 'package:flutter/material.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/go_home_btn.dart';
import 'package:remon_mobile/utils/utils.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen(this.error, this.stack, {super.key});
  const ErrorScreen.error(this.error, {super.key}) : stack = null;
  ErrorScreen.routeError({super.key})
      : stack = null,
        error = getStr(LocaleKeys.error_screen_route_is_broken);

  const ErrorScreen.empty({super.key})
      : error = null,
        stack = null;
  final Object? error;
  final StackTrace? stack;

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
