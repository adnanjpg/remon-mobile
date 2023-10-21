import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

extension MyTheme on ThemeData {
  bool get isLight => brightness == Brightness.light;

  Color get statusBarColor => Colors.white;

  Color get cancelButtonBgColor => AppTheme._lightNeutral[300]!;
  Color get cancelButtonTextColor => AppTheme._lightNeutral[700]!;

  Color get primaryButtonBgColor => AppTheme._lightPrimary;
  Color get primaryButtonDisabledBgColor =>
      AppTheme._lightPrimary.withOpacity(.4);
  Color get primaryButtonTextColor => AppTheme._lightOnDarkTextColor;
  Color get primaryButtonDisabledShadowColor =>
      AppTheme._black.withOpacity(.25 * .4);

  Color get primaryFieldHintColor => AppTheme._lightNeutral[600]!;
  Color get primaryFieldErrorColor => _danger;
  Color get primaryFieldEnabledBorderColor => AppTheme._lightNeutral[400]!;
  Color get primaryFieldDoneBorderColor => AppTheme._lightPrimary[300]!;
  Color get primaryFieldDisabledBorderColor => AppTheme._transparent;
  Color get primaryFieldErrorBorderColor => _danger;
  Color get primaryFieldFocusedBorderColor => AppTheme._lightPrimary[500]!;
  Color get primaryFieldIconColor => AppTheme._lightPrimary;
  Color get primaryFieldTapOverlayColor =>
      AppTheme._lightPrimary.withOpacity(.05);
  Color get primaryFieldLabelColor => AppTheme._lightNeutral[600]!;
  Color get primaryFieldTextColor => AppTheme._lightNeutral[1000]!;
  Color get primaryFieldDisabledBgColor => AppTheme._lightNeutral[200]!;

  Color get primaryImagePickerBorder => AppTheme._lightPrimary;

  Color get success => semanticGreen;
  Color get error => semanticRed;

  Color get semanticGreen => const Color(0xFF34C759);
  Color get semanticRed => const Color(0xFFFF3B30);
  Color get semanticNeutral => const Color(0xFFFF9500);

  Color get _danger => semanticRed;

  FontWeight get fontWeightBook => AppTheme._fontWeightBook;
  FontWeight get fontWeightMedium => AppTheme._fontWeightMedium;
  FontWeight get fontWeightBold => AppTheme._fontWeightBold;
}

final appThemeProv = Provider(AppTheme.new);

class AppTheme {
  final Ref ref;
  AppTheme(this.ref);

  static const int _lightPrimaryValue = 0xFFFF5566;
  static const MaterialColor _lightPrimary = const MaterialColor(
    _lightPrimaryValue,
    <int, Color>{
      100: Color(0xFFFF5566),
      200: Color(0xFFFF5566),
      300: Color(0xFFFF5566),
      400: Color(0xFFFF5566),
      500: Color(_lightPrimaryValue),
      600: Color(0xFFFF5566),
      700: Color(0xFFFF5566),
      800: Color(0xFFFF5566),
      900: Color(0xFFFF5566),
      1000: Color(0xFFFF5566),
      1100: Color(0xFFFF5566),
      1200: Color(0xFFFF5566),
    },
  );

  static const int _lightSecondaryValue = 0xFF1133FF;
  static const MaterialColor _lightSecondary = const MaterialColor(
    _lightSecondaryValue,
    <int, Color>{
      100: Color(0xFF1133FF),
      200: Color(0xFF1133FF),
      300: Color(0xFF1133FF),
      400: Color(0xFF1133FF),
      500: Color(_lightSecondaryValue),
      600: Color(0xFF1133FF),
      700: Color(0xFF1133FF),
      800: Color(0xFF1133FF),
      900: Color(0xFF1133FF),
      1000: Color(0xFF1133FF),
      1100: Color(0xFF1133FF),
      1200: Color(0xFF1133FF),
    },
  );

  static const int _lightNeutralValue = 0xFFDDDDDD;
  static const MaterialColor _lightNeutral = const MaterialColor(
    _lightNeutralValue,
    <int, Color>{
      100: Color(0xFFDDDDDD),
      200: Color(0xFFDDDDDD),
      300: Color(0xFFDDDDDD),
      400: Color(0xFFDDDDDD),
      500: Color(_lightNeutralValue),
      600: Color(0xFFDDDDDD),
      700: Color(0xFFDDDDDD),
      800: Color(0xFFDDDDDD),
      900: Color(0xFFDDDDDD),
      1000: Color(0xFFDDDDDD),
      1100: Color(0xFFDDDDDD),
      1200: Color(0xFFDDDDDD),
    },
  );

  static const Color _transparent = Colors.transparent;
  static const Color _white = Color(0xFFFFFFFF);
  static const Color _black = Color(0xFF000000);
  static const Color _lightOnDarkTextColor = _white;
  static const Color _lightOnBgTextColor = _black;

  Color get _backgroundColor => const Color(0xFFFFFFFF);

  static FontWeight get _fontWeightBook => FontWeight.w400;
  static FontWeight get _fontWeightMedium => FontWeight.w500;
  static FontWeight get _fontWeightBold => FontWeight.w700;

  ThemeData get lightTheme => ThemeData(
        primaryColor: _lightPrimary,
        scaffoldBackgroundColor: _backgroundColor,
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
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
