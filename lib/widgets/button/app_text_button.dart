import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textColor = Colors.white,
    this.buttonColor = Colors.blue,
    this.icon,
    this.textDecoration,
    this.padding,
    this.disableButton,
    this.borderColor,
    this.borderWidth,
    this.hoverColor,
    this.borderRadius,
  }) : super(key: key);

  const AppTextButton.primary({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textColor,
  })  : buttonColor = Colors.transparent,
        borderColor = Colors.transparent,
        icon = null,
        textDecoration = null,
        disableButton = Colors.transparent,
        padding = 0,
        hoverColor = Colors.transparent,
        borderRadius = null,
        borderWidth = null;

  const AppTextButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textColor,
   required this.buttonColor
  })  : icon = null,
        borderColor = Colors.transparent,
        borderWidth = 0,
        hoverColor = Colors.transparent,
        textDecoration = null,
        disableButton = Colors.transparent,
        padding = 0,
        borderRadius = null;

  const AppTextButton.primaryOutline({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textColor,
    this.borderWidth=2,
    required this.borderColor,
    this.borderRadius=5,
  })  : buttonColor = Colors.transparent,
        icon = null,
        textDecoration = null,
        disableButton = Colors.transparent,
        padding = 0,
        hoverColor = Colors.transparent;

  const AppTextButton.secondaryOutline({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textColor,
    required this.buttonColor,
    this.borderWidth=2,
    required this.borderColor,
    this.borderRadius=5,
  })  : icon = null,
        hoverColor = Colors.transparent,
        textDecoration = null,
        disableButton = Colors.transparent,
        padding = 0;

  final String text;
  final IconData? icon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Color? buttonColor;
  final VoidCallback onPressed;
  final TextDecoration? textDecoration;
  final num? padding;
  final Color? disableButton;
  final Color? borderColor;
  final num? borderWidth;
  final Color? hoverColor;
  final num? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(padding as double),
        backgroundColor: buttonColor ?? Colors.transparent,
        disabledForegroundColor: disableButton ?? Colors.transparent,
      ).copyWith(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!=null?borderRadius as double:0),
          side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth!=null?borderWidth as double : 0),
        )),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return hoverColor?.withOpacity(0.6) ?? textColor ?? Colors.blue;
            }
            return textColor ?? Colors.blue;
          },
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          // color: textColor??Colors.blue,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: textDecoration,
        ),
      ),
    );
  }
}