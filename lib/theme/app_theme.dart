import 'package:flutter/material.dart';
import 'package:playlist/theme/theme.dart';

class AppTheme {
  static ThemeData themeData({
    required String themeType,
    required String fontSizeType,
  }) {
    ThemeData themeData = ThemeData(
      useMaterial3: false,
    );

    return themeData.copyWith(
      colorScheme: _colorScheme(themeData.colorScheme, themeType),
      extensions: _extensions(themeType, fontSizeType),
      listTileTheme: const ListTileThemeData(horizontalTitleGap: 8),
    );
  }

  static ColorScheme _colorScheme(ColorScheme base, String colorType) {
    return base.copyWith(
      primary: Colors.blue,
    );
  }

  static List<ThemeExtension<dynamic>> _extensions(
    String themeType,
    String fontSizeType,
  ) {
    return <ThemeExtension<dynamic>>[
      getThemeColors(themeType),
      AppTextStyles.textStyles,
    ];
  }

  static AppColorsTheme getThemeColors(String themeType) {
    switch (themeType) {
      case 'light':
        return AppColorsTheme.themeColorsLight;
      case 'dark':
        return AppColorsTheme.themeColorsDark;
      default:
        return AppColorsTheme.themeColorsLight;
    }
  }
}
