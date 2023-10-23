import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

extension MyTexts on ThemeData {
  TextStyle get pageTitle => TextStyle(
        fontSize: 32,
        fontWeight: fontWeightBold,
      );

  TextStyle get pageDesc => TextStyle(
        fontSize: 24,
        fontWeight: fontWeightMedium,
        color: AppTheme._subTitleColor,
      );
}

extension MyTheme on ThemeData {
  bool get isLight => brightness == Brightness.light;

  Color get statusBarColor => AppTheme._lightNeutral2[500]!;

  Color get primaryButtonBgColor => AppTheme._lightNeutral;
  Color get primaryButtonDisabledBgColor =>
      AppTheme._lightSecondary[300]!.withOpacity(.4);
  Color get primaryButtonTextColor => AppTheme._lightOnBgTextColor;
  Color get primaryButtonDisabledShadowColor =>
      AppTheme._black.withOpacity(.25 * .4);

  Color get textButtonTextColor => AppTheme._lightNeutral2[500]!;
  Color get textButtonDisabledShadowColor => AppTheme._black.withOpacity(.25);

  Color get primaryFieldHintColor => AppTheme._lightNeutral[600]!;
  Color get primaryFieldErrorColor => _danger;
  Color get primaryFieldBorderColor => AppTheme._transparent;
  Color get primaryFieldIconColor => AppTheme._lightPrimary;
  Color get primaryFieldTapOverlayColor =>
      AppTheme._lightPrimary.withOpacity(.05);
  Color get primaryFieldLabelColor => AppTheme._lightOnBgTextColor;
  Color get primaryFieldTextColor => AppTheme._lightNeutral[1000]!;
  Color get primaryFieldBgColor => AppTheme._lightSecondary[500]!;
  Color get primaryFieldDisabledBgColor => AppTheme._lightNeutral[200]!;

  Color get primarySliderActiveColor => AppTheme._lightSecondary[500]!;
  Color get primarySliderInactiveColor =>
      AppTheme._lightSecondary[500]!.withOpacity(.4);
  Color get primarySliderThumbColor => AppTheme._white;

  Color get primaryImagePickerBorder => AppTheme._lightPrimary;

  Color get success => semanticGreen;
  Color get error => semanticRed;

  Color get semanticGreen => const Color(0xFF34C759);
  Color get semanticRed => const Color(0xFFFF3B30);
  Color get semanticNeutral => const Color(0xFFFF9500);

  Color get _danger => semanticRed;

  FontWeight get fontWeightLight => AppTheme._fontWeightLight;
  FontWeight get fontWeightMedium => AppTheme._fontWeightMedium;
  FontWeight get fontWeightBold => AppTheme._fontWeightBold;

  Color get bottomBarBgColor => AppTheme._lightNeutral[500]!;
  Color get bottomBarSelectedItemColor => AppTheme._lightPrimary[700]!;

  Color get deviceItemBackgroundColor => AppTheme._lightPrimary[500]!;
}

final appThemeProv = Provider(AppTheme.new);

class AppTheme {
  final Ref ref;
  AppTheme(this.ref);

  static const int _lightPrimaryValue = 0xFF96B6C5;
  static const MaterialColor _lightPrimary = const MaterialColor(
    _lightPrimaryValue,
    <int, Color>{
      100: Color(0xFFA7C8D7),
      200: Color(0xFF8595AB),
      300: Color(0xFF82BFC7),
      400: Color(0xFF92A9BC),
      500: Color(_lightPrimaryValue),
      600: Color(0xFF98B5A6),
      700: Color(0xFF94B7CB),
      800: Color(0xFFC596A6),
      900: Color(0xFFA6B596),
      1000: Color(0xFFA6C596),
      1100: Color(0xFFC5A696),
      1200: Color(0xFF96C5A6),
    },
  );

  static const int _lightSecondaryValue = 0xFFADC4CE;
  static const MaterialColor _lightSecondary = const MaterialColor(
    _lightSecondaryValue,
    <int, Color>{
      100: Color(0xFFC2D6E0),
      200: Color(0xFF94AEBD),
      300: Color(0xFFA1B7C7),
      400: Color(0xFFABCED5),
      500: Color(_lightSecondaryValue),
      600: Color(0xFFA9C1CB),
      700: Color(0xFFB3CBD7),
      800: Color(0xFFB3CCD8),
      900: Color(0xFFBED9E4),
      1000: Color(0xFFC1DCE6),
      1100: Color(0xFFC2DEE7),
      1200: Color(0xFFBACAE2),
    },
  );

  static const int _lightNeutralValue = 0xFFEEE0C9;
  static const MaterialColor _lightNeutral = const MaterialColor(
    _lightNeutralValue,
    <int, Color>{
      100: Color(0xFFF6E8D6),
      200: Color(0xFFD4C6B0),
      300: Color(0xFFE0D3BC),
      400: Color(0xFFE7D9C4),
      500: Color(_lightNeutralValue),
      600: Color(0xFFE5D6C2),
      700: Color(0xFFF0E1CC),
      800: Color(0xFFF0E1CC),
      900: Color(0xFFFAECD6),
      1000: Color(0xFFFAEFD9),
      1100: Color(0xFFFBEFDA),
      1200: Color(0xFFF3E6D2),
    },
  );

  static const int _lightNeutral2Value = 0xFFF1F0E8;
  static const MaterialColor _lightNeutral2 = const MaterialColor(
    _lightNeutral2Value,
    <int, Color>{
      100: Color(0xFFF6F5EF),
      200: Color(0xFFDFDED6),
      300: Color(0xFFE7E7DE),
      400: Color(0xFFEBEAE3),
      500: Color(_lightNeutral2Value),
      600: Color(0xFFE9E8E1),
      700: Color(0xFFF0EFEB),
      800: Color(0xFFF0EFEB),
      900: Color(0xFFF7F7F6),
      1000: Color(0xFFF8F8F7),
      1100: Color(0xFFF8F8F7),
      1200: Color(0xFFF3F3F2),
    },
  );

  static const Color _transparent = Colors.transparent;
  static const Color _white = Color(0xFFFFFFFF);
  static const Color _black = Color(0xFF000000);
  // ignore: unused_field
  static const Color _lightOnDarkTextColor = _white;
  static const Color _lightOnBgTextColor = _black;

  Color get _backgroundColor => _lightNeutral2[500]!;

  static Color get _subTitleColor => const Color(0xFF626262);

  static FontWeight get _fontWeightLight => FontWeight.w300;
  static FontWeight get _fontWeightMedium => FontWeight.w500;
  static FontWeight get _fontWeightBold => FontWeight.w700;

  ThemeData get lightTheme => ThemeData(
        primaryColor: _lightPrimary,
        scaffoldBackgroundColor: _backgroundColor,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme().apply(
          // https://stackoverflow.com/a/49287410/12555423
          bodyColor: _lightOnBgTextColor,
          displayColor: _lightOnBgTextColor,
        ),
        colorScheme: const ColorScheme.light(
          primary: _lightPrimary,
          secondary: _lightSecondary,
          tertiary: _lightNeutral,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: _backgroundColor,
          elevation: 0,
          foregroundColor: _backgroundColor,
          iconTheme: const IconThemeData(
            color: _lightOnBgTextColor,
          ),
        ),
      );
}
