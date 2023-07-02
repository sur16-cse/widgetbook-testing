import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

/// ElevatedButton wrapper for the app with variations
class AppElevatedButton extends StatelessWidget {
  /// Creates ElevatedButton wrapper
  const AppElevatedButton({
    super.key,
    this.label,
    this.onPressed,
    this.backgroundColor,
    this.icon,
    this.textColor,
    this.height,
    this.borderColor,
    this.mainAxisSize = MainAxisSize.min,
    this.elevation,
    this.width,
    this.borderRadius,
    required this.size,
  });

  /// Creates new instance of [AppElevatedButton] with Primary button style
  const AppElevatedButton.primary({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
    this.mainAxisSize = MainAxisSize.min,
    this.elevation = 10,
    required this.size,
    this.width,
    this.borderRadius,
  })  : backgroundColor = AppColors.primary,
        textColor = AppColors.white,
        borderColor = null;

  /// Creates new instance of [AppElevatedButton] with Primary Outline button style
  const AppElevatedButton.primaryOutline({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
    this.mainAxisSize = MainAxisSize.min,
    this.elevation,
    required this.size,
    this.width,
    this.borderRadius,
  })  : backgroundColor = AppColors.white,
        textColor = AppColors.primary,
        borderColor = AppColors.primary;

  /// Creates new instance of [AppElevatedButton] with secondary button style
  const AppElevatedButton.secondary({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
    this.mainAxisSize = MainAxisSize.min,
    this.elevation,
    required this.size,
    this.width,
    this.borderRadius,
  })  : backgroundColor = AppColors.secondary,
        textColor = AppColors.white,
        borderColor = null;

  /// Creates new instance of [AppElevatedButton] with secondary outline button style
  const AppElevatedButton.secondaryOutline({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
    this.mainAxisSize = MainAxisSize.min,
    this.elevation,
    required this.size,
    this.width,
    this.borderRadius,
  })  : backgroundColor = AppColors.white,
        textColor = AppColors.secondary,
        borderColor = AppColors.border;

  /// Button text label
  final String? label;

  /// Button background color
  final Color? backgroundColor;

  /// Button text color
  final Color? textColor;

  /// Button onPressed callback
  final VoidCallback? onPressed;

  /// Button size
  final Size size;

  /// Button height
  final num? height;

  ///Button width
  final double? width;

  ///Button borderRadius
  final double? borderRadius;

  /// Button border
  final Color? borderColor;

  /// Optional icon
  final IconData? icon;

  /// How much space should be occupied in the main axis.
  final MainAxisSize mainAxisSize;

  /// position from z axis
  final double? elevation;

  Color? _getBackgroundColor(bool isDark) {
    if (isDark) {
      if (backgroundColor == AppColors.white) {
        return AppColors.secondary;
      } else if (backgroundColor == AppColors.secondary) {
        return AppColors.white;
      }
    }
    return backgroundColor;
  }

  Color? _getTextColor(bool isDark) {
    if (isDark) {
      if (textColor == AppColors.white) {
        return AppColors.secondary;
      } else if (textColor == AppColors.secondary) {
        return AppColors.white;
      }
    }
    return textColor;
  }


  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final dynamicBackgroundColor = _getBackgroundColor(isDark);
    final dynamicTextColor = _getTextColor(isDark);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: dynamicBackgroundColor,
          foregroundColor: dynamicTextColor,
          // fixedSize: Size.fromHeight(size as double),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                borderRadius != null ? borderRadius! : (size.height) / 2),
            side: borderColor == null
                ? BorderSide.none
                : BorderSide(color: borderColor!),
          ),
          textStyle:
            AppTextStyles.button,
          elevation: elevation ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: mainAxisSize,
        children: [

          if (icon != null)
            Padding(
              padding: EdgeInsetsDirectional.only(end: label == null ? 0 : 8),
              child: Icon(icon,size:size.height,),
            ),
          if (label != null) Text(label!),
        ],
      ),
    );
  }
}