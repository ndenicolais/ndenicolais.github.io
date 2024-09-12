import 'package:flutter/material.dart';
import 'package:myportfolio/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.lightYellow,
        onPrimary: AppColors.lightYellow,
        secondary: AppColors.darkGrey,
        onSecondary: AppColors.lightYellow,
        tertiary: AppColors.lightSand,
        onTertiary: AppColors.darkYellow,
        surface: AppColors.lightYellow,
        onSurface: AppColors.darkGrey,
        onError: AppColors.error,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.darkGrey,
        onPrimary: AppColors.darkGrey,
        secondary: AppColors.lightYellow,
        onSecondary: AppColors.darkGrey,
        tertiary: AppColors.darkYellow,
        onTertiary: AppColors.lightSand,
        surface: AppColors.darkGrey,
        onSurface: AppColors.darkGrey,
        onError: AppColors.error,
      ),
    );
  }
}
