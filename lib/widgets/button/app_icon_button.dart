import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.backgroundColor,
    this.tooltip,
    this.iconSize,
    this.hoverColor,
    this.highlightColor,
    this.borderColor,
    this.borderRadius,
    this.splashRadius,
  }) : super(key: key);

  const AppIconButton.standard({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.hoverColor,
    this.highlightColor,
    this.borderColor,
  })  : iconSize = null,
        tooltip = '',
        backgroundColor = Colors.transparent,
        borderRadius = 50.0,
        splashRadius = 50.0;

  const AppIconButton.tooltip({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconSize,
    this.hoverColor,
    this.highlightColor,
    this.iconColor,
    this.tooltip,
  })  : backgroundColor = Colors.transparent,
        borderColor = null,
        borderRadius = 50.0,
        splashRadius = 50.0;

  const AppIconButton.filled({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
    this.iconSize,
    this.hoverColor,
    this.highlightColor,
  })  : iconColor = Colors.white,
        tooltip = '',
        borderColor = null,
        borderRadius = 50.0,
        splashRadius = 50.0;

  const AppIconButton.filledTonal({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.iconColor,
    this.iconSize,
    this.hoverColor,
    this.highlightColor,
  })  : backgroundColor = Colors.grey,
        tooltip = '',
        borderColor = null,
        borderRadius = 50.0,
        splashRadius = 50.0;

  const AppIconButton.outline({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.iconColor,
    this.iconSize,
    this.hoverColor,
    this.highlightColor,
    required this.borderColor,
  })  : backgroundColor = Colors.transparent,
        tooltip = '',
        borderRadius = 50.0,
        splashRadius = 50.0;

  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? splashRadius;
  final VoidCallback onPressed;
  final String? tooltip;
  final double? iconSize;

  // Color? _getBackgroundColor(bool isDark) {
  //   if (isDark) {
  //     if (backgroundColor == AppColors.white) {
  //       return AppColors.secondary;
  //     } else if (backgroundColor == AppColors.secondary) {
  //       return AppColors.white;
  //     }
  //   }
  //   return backgroundColor;
  // }

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 2)
            : null,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 50.0),
      ),
      child: InkWell(
        child: IconButton(
          color: iconColor,
          onPressed: onPressed,
          tooltip: tooltip,
          icon: Icon(icon),
          iconSize: iconSize,
          splashRadius: splashRadius ?? 50.0,
        ),
      ),
    );
  }
}