part of 'utils.dart';

// FUTURETODO
String getLanguageCode() {
  return 'en-US';
}

String getStr(String? inp) {
  try {
    if (inp == null) {
      logger.e('getStr: _inp is null');
      return '';
    }

    final trans = inp.tr();
    final hasTrans = inp.isNotEmpty == true;
    if (!hasTrans) {
      logger.e('getStr: $inp has no translation');
    }

    return hasTrans ? trans : '';
  } catch (e) {
    // we do not want to break prod, but at the same
    // time we wanna catch these errors at debug
    logger.e(e);
    return '';
  }
}

String getStrArgs(
  String? inp, {
  required List<String> args,
}) {
  try {
    if (inp == null) {
      logger.e('getStr: _inp is null');
      return '';
    }

    final trans = inp.tr(args: args);
    final hasTrans = inp.isNotEmpty == true;
    if (!hasTrans) {
      logger.e('getStr: $inp has no translation');
    }

    return hasTrans ? trans : '';
  } catch (e) {
    // we do not want to break prod, but at the same
    // time we wanna catch these errors at debug
    logger.e(e);
    return '';
  }
}

String getStrPlural(
  String? inp,
  num value, {
  List<String>? args,
  Map<String, String>? namedArgs,
  String? name,
  NumberFormat? format,
}) {
  try {
    if (inp == null) {
      logger.e('getStr: _inp is null');
      return '';
    }

    final trans = plural(
      inp,
      value,
      args: args,
      namedArgs: namedArgs,
      name: name,
      format: format,
    );

    final hasTrans = inp.isNotEmpty == true;
    if (!hasTrans) {
      logger.e('getStr: $inp has no translation');
    }

    return hasTrans ? trans : '';
  } catch (e) {
    // we do not want to break prod, but at the same
    // time we wanna catch these errors at debug
    logger.e(e);
    return '';
  }
}
