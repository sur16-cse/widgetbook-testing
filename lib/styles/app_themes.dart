
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

/// Helper class for app wide themes
class AppThemes {
  /// Returns theme data
  static ThemeData getTheme({bool isDark = false}) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.getMaterialColorFromColor(AppColors.primary),
      scaffoldBackgroundColor: isDark ? AppColors.black : AppColors.white,
      dividerColor:
      isDark ? AppColors.white.withOpacity(0.2) : AppColors.border,
      splashFactory: defaultTargetPlatform == TargetPlatform.android
          ? InkSplash.splashFactory
          : NoSplash.splashFactory,
      highlightColor: isDark
          ? AppColors.white.withOpacity(0.2)
          : AppColors.black.withOpacity(0.1),
      appBarTheme: AppBarTheme(
        backgroundColor: isDark ? AppColors.black : AppColors.white,
        elevation: 0,
        titleTextStyle: AppTextStyles.bodyLgBlack.copyWith(
          color: isDark ? AppColors.white : AppColors.black,
        ),
        shadowColor: AppColors.border,
        systemOverlayStyle:
        isDark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: isDark ? AppColors.black : AppColors.white,
        selectedItemColor: isDark ? AppColors.white : AppColors.text,
        unselectedItemColor:
        isDark ? AppColors.whiteLight : AppColors.textLight,
        unselectedIconTheme: const IconThemeData(size: 22),
        selectedIconTheme: const IconThemeData(size: 22),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyles.body,
        labelStyle: AppTextStyles.body,
        floatingLabelStyle: AppTextStyles.body.copyWith(
          color: AppColors.primary,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 0,
          textStyle: AppTextStyles.button,
          splashFactory: defaultTargetPlatform == TargetPlatform.android
              ? InkSplash.splashFactory
              : NoSplash.splashFactory,
        ),
      ),
      iconTheme: IconThemeData(
        color: isDark ? AppColors.whiteLight : AppColors.textLight,
      ),
      textTheme: TextTheme(
        displayLarge: AppTextStyles.h1,
        displayMedium: AppTextStyles.h2,
        displaySmall: AppTextStyles.h3.copyWith(
          color: isDark ? AppColors.white : AppColors.black,
        ),
        headlineMedium: AppTextStyles.h4.copyWith(
          color: isDark ? AppColors.white : AppColors.black,
        ),
        headlineSmall: AppTextStyles.h5,
        bodySmall: AppTextStyles.caption.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
        bodyLarge: AppTextStyles.bodyBold,
        bodyMedium: AppTextStyles.body.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
        titleMedium: AppTextStyles.bodySmBold,
        titleSmall: AppTextStyles.bodySm.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
      ),
    );
  }
}

/// Theme extension with helper getters and methods
extension ThemeExtension on ThemeData {
  /// Whether theme brightness is dark
  bool get isDark {
    return brightness == Brightness.dark;
  }
}