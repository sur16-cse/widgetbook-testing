import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? label;
  final Widget? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double elevation;

  const AppFloatingActionButton({super.key, 
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation = 6.0, 
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed??(){},
      backgroundColor: backgroundColor??Colors.indigo.shade600,
      foregroundColor: foregroundColor??Colors.white,
      elevation: elevation,
      child: icon,
    );
  }
}
