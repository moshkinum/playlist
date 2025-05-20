import 'package:flutter/material.dart';

import 'app_colors.dart';

@immutable
class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  const AppColorsTheme({
    required this.white,
    required this.grey900,
    required this.amber200,
    required this.blue600,
    required this.white_grey900, // primary
    required this.blue600_grey900, // primaryVariant
    required this.grey900_white, // onPrimary
    required this.grey200_white, // secondary
    required this.grey500_grey900, // secondaryVariant
    required this.black_white, // onSecondary
    required this.grey500_white, // onSecondaryFixed
  });

  final Color? white;
  final Color? grey900;
  final Color? amber200;
  final Color? blue600;
  final Color? white_grey900;
  final Color? blue600_grey900;
  final Color? grey900_white;
  final Color? grey200_white;
  final Color? grey500_grey900;
  final Color? black_white;
  final Color? grey500_white;

  @override
  AppColorsTheme copyWith({
    Color? white,
    Color? grey900,
    Color? amber200,
    Color? blue600,
    Color? white_to_grey900,
    Color? blue600_grey900,
    Color? grey900_white,
    Color? grey200_white,
    Color? grey500_grey900,
    Color? black_white,
    Color? grey500_white,
  }) {
    return AppColorsTheme(
      white: white ?? this.white,
      grey900: grey900 ?? this.grey900,
      amber200: amber200 ?? this.amber200,
      blue600: blue600 ?? this.blue600,
      white_grey900: white_grey900 ?? white_grey900,
      blue600_grey900: blue600_grey900 ?? this.blue600_grey900,
      grey900_white: grey900_white ?? this.grey900_white,
      grey200_white: grey200_white ?? this.grey200_white,
      grey500_grey900: grey500_grey900 ?? this.grey500_grey900,
      black_white: black_white ?? this.black_white,
      grey500_white: grey500_white ?? this.grey500_white,
    );
  }

  @override
  AppColorsTheme lerp(AppColorsTheme? other, double t) {
    if (other is! AppColorsTheme) {
      return this;
    }
    return AppColorsTheme(
      white: Color.lerp(white, other.white, t),
      grey900: Color.lerp(grey900, other.grey900, t),
      amber200: Color.lerp(amber200, other.amber200, t),
      blue600: Color.lerp(blue600, other.blue600, t),
      white_grey900: Color.lerp(white_grey900, other.white_grey900, t),
      blue600_grey900: Color.lerp(blue600_grey900, other.blue600_grey900, t),
      grey900_white: Color.lerp(grey900_white, other.grey900_white, t),
      grey200_white: Color.lerp(grey200_white, other.grey200_white, t),
      grey500_grey900: Color.lerp(grey500_grey900, other.grey500_grey900, t),
      black_white: Color.lerp(black_white, other.black_white, t),
      grey500_white: Color.lerp(grey500_white, other.grey500_white, t),
    );
  }

  static const themeColorsLight = AppColorsTheme(
    white: AppColors.white,
    grey900: AppColors.grey900,
    amber200: AppColors.amber200,
    blue600: AppColors.blue600,
    white_grey900: AppColors.white,
    blue600_grey900: AppColors.blue600,
    grey900_white: AppColors.grey900,
    grey200_white: AppColors.grey200,
    grey500_grey900: AppColors.grey500,
    black_white: AppColors.black,
    grey500_white: AppColors.grey500,
  );

  static const themeColorsDark = AppColorsTheme(
    white: AppColors.white,
    grey900: AppColors.grey900,
    amber200: AppColors.amber200,
    blue600: AppColors.blue600,
    white_grey900: AppColors.grey900,
    blue600_grey900: AppColors.grey900,
    grey900_white: AppColors.white,
    grey200_white: AppColors.white,
    grey500_grey900: AppColors.grey900,
    black_white: AppColors.white,
    grey500_white: AppColors.white,
  );
}
