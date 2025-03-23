import 'package:flutter/material.dart';

abstract class AbstractTheme {
  static const primaryLightGrey = Color(0x00e4ebf1);
  static const primaryDarkGrey = Color(0x00b5bfc6);
  static const primaryDarkerGrey = Color(0x006e7f8d);

  static const primaryShadow = Color(0x00fafbff);
  static const secondaryShadow = Color(0x00161b1d);
}

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    required this.primary,
    required this.shadow,
  });

  final Color primary;
  final Color shadow;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? shadow,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
    );
  }
}
