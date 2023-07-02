import 'package:flutter/material.dart';

class AppSnackbarMessage  {
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
  GlobalKey<ScaffoldMessengerState>();

  static show({
    required String message,
    Duration duration = const Duration(seconds: 2),
    Color? backgroundColor,
    double borderRadius = 8,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    TextStyle? textStyle,
    SnackBarAction? action,
    bool showIcon = true,
    Icon icon = const Icon(Icons.info_outline),
  }) {
    scaffoldMessengerKey.currentState?.removeCurrentSnackBar();
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (showIcon) icon,
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: textStyle ??
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
        duration: duration,
        backgroundColor: backgroundColor ?? Colors.black.withOpacity(0.7),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
        action: action,
      ),
    );
  }
}