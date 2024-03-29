import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimary.withOpacity(1),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.indigoA400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray80049,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary.withOpacity(0.6),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.indigoA400,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
        ),
        displayLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 64.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 48.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 36.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary.withOpacity(0.6),
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary.withOpacity(0.6),
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.5),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF5B4CE2),
    secondaryContainer: Color(0XFF1357B6),

    // On colors(text colors)
    onPrimary: Color(0XF2FFFFFF),
    onPrimaryContainer: Color(0XFF2F2E41),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);
  Color get amberA400 => Color(0XFFFFC700);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFCBE0FC);
  Color get blue700 => Color(0XFF0C7BCA);
  Color get blue70001 => Color(0XFF1976D2);
  Color get blue800 => Color(0XFF0A66C2);
  Color get blueA200 => Color(0XFF3686F7);
  Color get blueA20001 => Color(0XFF4D8AF0);
  Color get blueA20002 => Color(0XFF4285F4);
  Color get blueA400 => Color(0XFF1877F2);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray800 => Color(0XFF3F3D56);
  Color get blueGray80001 => Color(0XFF235067);

  // DeepOrange
  Color get deepOrangeA100 => Color(0XFFFDA57D);
  Color get deepOrangeA400 => Color(0XFFFF3D00);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFD0CDE1);
  Color get deepPurple300 => Color(0XFF887EE4);
  Color get deepPurpleA400 => Color(0XFF6415FF);

  // Gray
  Color get gray100 => Color(0XFFF2F2F2);
  Color get gray300 => Color(0XFFE0E0E0);
  Color get gray30001 => Color(0XFFE6E6E6);
  Color get gray400 => Color(0XFFBBBABA);
  Color get gray40059 => Color(0X59C4C4C4);
  Color get gray500 => Color(0XFF9A9999);
  Color get gray50001 => Color(0XFFA4A4A4);
  Color get gray600 => Color(0XFF797979);
  Color get gray60019 => Color(0X19808080);
  Color get gray700 => Color(0XFF666666);
  Color get gray70001 => Color(0XFF585252);
  Color get gray70002 => Color(0XFF565656);
  Color get gray800 => Color(0XFF4D4545);
  Color get gray80049 => Color(0X493C3C43);

  // GrayCc
  Color get gray100Cc => Color(0XCCF4F4F4);

  // Green
  Color get green500 => Color(0XFF4CAF50);
  Color get greenA700 => Color(0XFF20B15A);

  // Indigo
  Color get indigo600 => Color(0XFF3B5998);
  Color get indigoA400 => Color(0XFF5B4DE2);

  // LightBlue
  Color get lightBlueA700 => Color(0XFF007AFF);

  // Orange
  Color get orange300 => Color(0XFFFFBA40);

  // Red
  Color get red400 => Color(0XFFE9573E);
  Color get red500 => Color(0XFFFF302F);
  Color get red800 => Color(0XFFD81616);
  Color get red80001 => Color(0XFFD71616);
  Color get redA700 => Color(0XFFFF0000);

  // Teal
  Color get teal300 => Color(0XFF3AD29F);

  // Yellow
  Color get yellowA200 => Color(0XFFFFFF00);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
