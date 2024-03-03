part of 'utils.dart';

final logger = _LoggerImpl();

class _LoggerImpl extends Logger {
  _LoggerImpl()
      : super(
          printer: PrettyPrinter(
            methodCount: 0,
            errorMethodCount: 8,
            lineLength: 120,
            colors: true,
            printEmojis: true,
            printTime: true,
          ),
        );

  @override
  void log(
    Level level,
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    try {
      stackTrace ??= StackTrace.current;

      if (appConfig.isLocalDev) {
        super.log(level, message, error: error, stackTrace: stackTrace);
      } else {
        try {
          super.log(level, message, error: error, stackTrace: stackTrace);
        } catch (e) {
          // crashlytics may fail, but we cant do anything about it
        }
      }
    } catch (err) {
      debugPrint(err.toString());

      // we cant do anything about this in prod
      // if any error came to this point, we just
      // pay respect for surviving this far
    }
  }
}
