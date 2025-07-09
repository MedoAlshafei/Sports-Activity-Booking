import 'package:flutter/material.dart';

// Theme Extension for custom colors
@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color accent1;
  final Color accent2;
  final Color accent3;
  final Color accent4;
  final Color success;
  final Color warning;
  final Color info;

  const AppColors({
    required this.accent1,
    required this.accent2,
    required this.accent3,
    required this.accent4,
    required this.success,
    required this.warning,
    required this.info,
  });

  @override
  AppColors copyWith({
    Color? accent1,
    Color? accent2,
    Color? accent3,
    Color? accent4,
    Color? success,
    Color? warning,
    Color? info,
  }) {
    return AppColors(
      accent1: accent1 ?? this.accent1,
      accent2: accent2 ?? this.accent2,
      accent3: accent3 ?? this.accent3,
      accent4: accent4 ?? this.accent4,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      accent1: Color.lerp(accent1, other.accent1, t)!,
      accent2: Color.lerp(accent2, other.accent2, t)!,
      accent3: Color.lerp(accent3, other.accent3, t)!,
      accent4: Color.lerp(accent4, other.accent4, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
    );
  }
}
