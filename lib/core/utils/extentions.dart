import 'package:flutter/material.dart';
import 'package:playlist/theme/theme.dart';

extension BuildContextExt on BuildContext {
  AppColorsTheme get color => Theme.of(this).extension<AppColorsTheme>()!;

  AppTextStyles get textStyle => Theme.of(this).extension<AppTextStyles>()!;

  TextStyle textStyleColor(TextStyle textStyle, Color color) =>
      textStyle.copyWith(color: color);
}
