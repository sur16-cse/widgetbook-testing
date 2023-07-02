import 'package:flutter/material.dart';

class AppAlertDialog extends StatefulWidget {
  const AppAlertDialog({
    super.key,
    this.title,
    this.message,
    required this.onPressedPositive,
    this.onPressedNegative,
    this.positiveButtonText = "OK",
    this.negativeButtonText = "Cancel",
    this.elevation = 0,
    this.shadowColor,
    this.backgroundColor,
    this.scrollable,
    this.titleFontWeight,
    this.titleFontColor,
    this.titleFontSize = 0,
    this.titleTextStyle,
    this.content,
    this.actionsAlignment,
    this.alignment,
    this.titleWidget,
    this.useMaterial3,
    this.contentTextStyle,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.icon,
    this.iconColor,
    this.iconPadding = 0,
  });

  final String? title;
  final String? message;
  final Function onPressedPositive;
  final Function? onPressedNegative;
  final String? positiveButtonText;
  final String? negativeButtonText;
  final num? elevation;
  final Color? shadowColor;
  final Color? backgroundColor;
  final bool? scrollable;
  final FontWeight? titleFontWeight;
  final Color? titleFontColor;
  final num? titleFontSize;
  final TextStyle? titleTextStyle;
  final Widget? content;
  final Widget? titleWidget;
  final MainAxisAlignment? actionsAlignment;
  final Alignment? alignment;
  final bool? useMaterial3;
  final TextStyle? contentTextStyle;
  final num? borderRadius;
  final Color? borderColor;
  final num? borderWidth;
  final IconData? icon;
  final Color? iconColor;
  final num? iconPadding;

  @override
  _AppAlertDialogState createState() => _AppAlertDialogState();
}

class _AppAlertDialogState extends State<AppAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(useMaterial3: widget.useMaterial3),
      child: AlertDialog(
        title: widget.titleWidget ??
            (widget.title != null ? Text(widget.title!) : null),
        titleTextStyle: widget.titleTextStyle ??
            TextStyle(
              fontWeight: widget.titleFontWeight ?? FontWeight.bold,
              color: widget.titleFontColor ?? Colors.black,
              fontSize: widget.titleFontSize != 0
                  ? widget.titleFontSize as double
                  : 20,
            ),
        content:
            widget.content ??(widget.message!=null? Text(widget.message!):null),
        contentTextStyle: widget.contentTextStyle ??
            const TextStyle(fontSize: 16.0, color: Colors.black87),
//         actionsOverflowAlignment:,
//         actionsOverflowButtonSpacing: ,
//         actionsOverflowDirection: ,
        icon: widget.icon != null ? Icon(widget.icon) : null,
        iconColor: widget.iconColor ?? Colors.orange,
        iconPadding: EdgeInsets.all(
            widget.iconPadding != 0 ? widget.iconPadding as double : 8),
        // actionsPadding: ,
        // buttonPadding: ,

        alignment: widget.alignment ?? Alignment.center,
        scrollable: widget.scrollable ?? false,
        elevation: widget.elevation != 0 ? widget.elevation as double : 2,
        shadowColor: widget.shadowColor ?? Colors.transparent,
        backgroundColor: widget.backgroundColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
                widget.borderRadius != 0 ? widget.borderRadius as double : 20),
          ),
          side: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width:
                  widget.borderWidth != 0 ? widget.borderWidth as double : 0),
        ),
        actionsAlignment: widget.actionsAlignment ?? MainAxisAlignment.end,
        actions: [
          if (widget.negativeButtonText != '')
            ElevatedButton(
              onPressed: () => widget.onPressedNegative!(context),
              child: Text(widget.negativeButtonText ?? 'Cancel'),
            ),
          ElevatedButton(
            onPressed: () => widget.onPressedPositive(context),
            child: Text(widget.positiveButtonText ?? 'OK'),
          ),
        ],
      ),
    );
  }
}