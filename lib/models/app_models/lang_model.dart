import 'package:flutter/material.dart';
import 'package:remon_mobile/utils/utils.dart';

@immutable
class LangModel {
  const LangModel(
    this.langCode,
    this.langCountry,
    this.langName,
  );
  final String langCode;
  final String langCountry;
  final String langName;

  static LangModel? fromLocale(Locale locale) {
    for (final lang in appLangs) {
      if (lang.langCode == locale.languageCode) {
        return lang;
      }
    }

    return null;
  }

  bool get isRtl => langCode == 'ar';

  TextDirection get textDirection =>
      isRtl ? TextDirection.rtl : TextDirection.ltr;

  Locale toLocale() {
    return Locale(langCode, langCountry);
  }

  @override
  // ==
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LangModel && other.langCode == langCode;
  }

  @override
  int get hashCode => langCode.hashCode;
}
