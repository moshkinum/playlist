import 'package:flutter/material.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.title1,
    // required this.title2,
    // required this.title3,
    // required this.body1,
    // required this.body2,
    // required this.body3,
    required this.button1,
    // required this.button2,
    required this.caption1,
    // required this.caption2,
    // required this.tab,
  });

  final TextStyle? title1;

  // final TextStyle? title2;
  // final TextStyle? title3;
  // final TextStyle? body1;
  // final TextStyle? body2;
  // final TextStyle? body3;
  final TextStyle? button1;

  // final TextStyle? button2;
  final TextStyle? caption1;

  // final TextStyle? caption2;
  // final TextStyle? tab;

  @override
  AppTextStyles copyWith({
    TextStyle? title1,
    // TextStyle? title2,
    // TextStyle? title3,
    // TextStyle? body1,
    // TextStyle? body2,
    // TextStyle? body3,
    TextStyle? button1,
    // TextStyle? button2,
    TextStyle? caption1,
    // TextStyle? caption2,
    // TextStyle? tab,
  }) {
    return AppTextStyles(
      title1: title1 ?? this.title1,
      // title2: title2 ?? this.title2,
      // title3: title3 ?? this.title3,
      // body1: body1 ?? this.body1,
      // body2: body2 ?? this.body2,
      // body3: body3 ?? this.body3,
      button1: button1 ?? this.button1,
      // button2: button2 ?? this.button2,
      caption1: caption1 ?? this.caption1,
      // caption2: caption2 ?? caption2,
      // tab: tab ?? this.tab,
    );
  }

  @override
  AppTextStyles lerp(AppTextStyles? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      title1: TextStyle.lerp(title1, other.title1, t),
      // title2: TextStyle.lerp(title2, other.title2, t),
      // title3: TextStyle.lerp(title3, other.title3, t),
      // body1: TextStyle.lerp(body1, other.body1, t),
      // body2: TextStyle.lerp(body2, other.body2, t),
      // body3: TextStyle.lerp(body3, other.body3, t),
      button1: TextStyle.lerp(button1, other.button1, t),
      // button2: TextStyle.lerp(button2, other.button2, t),
      caption1: TextStyle.lerp(caption1, other.caption1, t),
      // caption2: TextStyle.lerp(caption2, other.caption2, t),
      // tab: TextStyle.lerp(tab, other.tab, t),
    );
  }

  static const textStyles = AppTextStyles(
    title1: TextStyle(
      fontFamily: "YS Display",
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    // title2: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
    // title3: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    // body1: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    // body2: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
    // body3: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    button1: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
    // button2: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    caption1: TextStyle(
      fontFamily: "YS Display",
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    // caption2: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    // tab: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  );
}
