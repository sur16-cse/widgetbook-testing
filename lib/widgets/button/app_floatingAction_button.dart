import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation = 6.0,
    this.label,
    this.height,
    this.width,
    this.size,
    this.tooltip,
    this.mini,
    this.isExtended,
    this.shape,
  });

  AppFloatingActionButton.circular({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
    this.elevation = 6.0,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.size,
  })  : label = '',
        height = null,
        width = null,
        mini = false,
        tooltip = '',
        isExtended = false,
        shape = CircleBorder(),
        borderColor = Colors.transparent;

  AppFloatingActionButton.rectangular({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
    this.elevation = 6.0,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.size,
  })  : label = '',
        height = null,
        width = null,
        mini = false,
        tooltip = '',
        isExtended = false,
        shape = const RoundedRectangleBorder(),
        borderColor = Colors.transparent;

  const AppFloatingActionButton.tooltip({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
    this.elevation = 6.0,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.size,
    this.tooltip,
    this.shape,
  })  : label = '',
        height = null,
        width = null,
        mini = false,
        isExtended = false,
        borderColor = Colors.transparent;

  final VoidCallback? onPressed;
  final String? label;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? borderColor;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? splashColor;
  final double elevation;
  final double? height;
  final double? width;
  final String? size;
  final ShapeBorder? shape;
  final String? tooltip;
  final bool? mini;
  final bool? isExtended;

  @override
  Widget build(BuildContext context) {
    print(elevation);
    return Ink(
      // height: height??null,
      // width: width??null,
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.green, width: 3.0),
        // shape: BoxShape.shape,
        boxShadow: [
          BoxShadow(
            color: Colors.redAccent.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
          child: size != 'extended'
              ? FloatingActionButton(
                  // mini: mini!,
                  tooltip: tooltip??'',
                  onPressed: onPressed ?? () {},
                  backgroundColor: backgroundColor ?? Colors.indigo.shade600,
                  foregroundColor: foregroundColor ?? Colors.white,
                  splashColor: splashColor??Colors.transparent,
                  elevation: elevation??0,
                  child: Icon(icon),
                )
              : FloatingActionButton.extended(
            tooltip: tooltip??'',
            onPressed: onPressed ?? () {},
            backgroundColor: backgroundColor ?? Colors.indigo.shade600,
            foregroundColor: foregroundColor ?? Colors.white,
            splashColor: splashColor??Colors.transparent,
            // elevation: elevation??0,
                  hoverColor: hoverColor??Colors.transparent,
                  icon: Icon(icon),
                  label:Text(label??"Hello"),
                  // shape: shape,
                )),
    );
  }
}