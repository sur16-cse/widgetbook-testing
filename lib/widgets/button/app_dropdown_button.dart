import 'package:flutter/material.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';

class AppDropDownButton extends StatefulWidget {
  AppDropDownButton({
    super.key,
    this.dropDownColor,
    this.gradient,
    this.fontSize,
    this.dropDownButtonColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.boxShadow,
    this.shadowRadius,
    this.iconColor,
    required this.list,
    this.icon,
    this.elevation,
    this.textColor,
    this.fontWeight,
    this.underlineHeight,
    this.underlineColor,
    this.hintText,
    this.isExpanded,
    this.isGradient,
    this.height,
    this.width,
    this.padding,
    this.menuHeight,
  });

  AppDropDownButton.underline({
    Key? key,
    this.dropDownColor,
    // this.gradient,
    this.fontSize,
    this.dropDownButtonColor,
    this.iconColor,
    required this.list,
    this.icon,
    this.elevation,
    this.textColor,
    this.fontWeight,
    required this.underlineHeight,
    required this.underlineColor,
    this.hintText,
    this.isExpanded,
    this.height,
    this.width,
    this.padding,
    this.menuHeight,
  })  : isGradient = false,
        gradient = '',
        borderColor = Colors.transparent,
        borderWidth = 0,
        borderRadius = 0,
        boxShadow = Colors.transparent,
        shadowRadius = 0,
        super(key: key);

  AppDropDownButton.circular({
    super.key,
    this.dropDownColor,
    this.fontSize,
    this.dropDownButtonColor,
    this.borderColor,
    required this.borderWidth,
    required this.borderRadius,
    this.iconColor,
    required this.list,
    this.icon,
    this.elevation,
    this.textColor,
    this.fontWeight,
    this.hintText,
    this.isExpanded,
    this.height,
    this.width,
    this.padding,
    this.menuHeight,
  })  : isGradient = false,
        gradient = '',
        boxShadow = Colors.transparent,
        shadowRadius = 0,
        underlineHeight = 0,
        underlineColor = Colors.transparent;

  // final Color _dropdownColor= dropDownButtonColor ?? Colors.blue;

  AppDropDownButton.filled({
    super.key,
    this.dropDownColor,
    this.fontSize,
    this.dropDownButtonColor = Colors.blue,
    this.borderColor,
    required this.borderWidth,
    required this.borderRadius,
    this.iconColor,
    required this.list,
    this.icon,
    this.elevation,
    this.textColor,
    this.fontWeight,
    this.hintText,
    this.isExpanded,
    this.height,
    this.width,
    this.padding,
    this.menuHeight,
  })  : isGradient = false,
        gradient = '',
        boxShadow = Colors.transparent,
        shadowRadius = 0,
        underlineHeight = 0,
        underlineColor = Colors.transparent;

  AppDropDownButton.gradient({
    super.key,
    this.dropDownColor,
    required this.gradient,
    this.fontSize,
    this.iconColor,
    required this.list,
    this.icon,
    this.elevation,
    this.textColor,
    this.fontWeight,
    this.hintText,
    this.isExpanded,
    this.height,
    this.width,
    this.padding,
    this.menuHeight,
    this.borderRadius,
    this.boxShadow,
  })  : dropDownButtonColor = null,
        borderColor = Colors.transparent,
        borderWidth = 0,
        shadowRadius = 0,
        underlineHeight = 0,
        underlineColor = Colors.transparent,
        isGradient = true;

  final List<String>? list;
  final String? gradient;
  final IconData? icon;
  final num? elevation;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final num? underlineHeight;
  final Color? underlineColor;
  final Color? dropDownButtonColor;
  final Color? dropDownColor;
  final Color? borderColor;
  final num? borderWidth;
  final double? borderRadius;
  final Color? boxShadow;
  final double? shadowRadius;
  final Color? iconColor;
  final String? hintText;
  final bool? isExpanded;
  final num? height;
  final num? width;
  final num? padding;
  final num? menuHeight;
  bool? isGradient = false;
  String dropdownValue = 'Select...';

  @override
  State<AppDropDownButton> createState() => _AppDropDownButtonState();
}

class _AppDropDownButtonState extends State<AppDropDownButton> {
  late List<Color> colors = [];
  MaterialColor convertToMaterialColor(Color color) {
    Map<int, Color> colorCodes = {
      50: color.withOpacity(0.1),
      100: color.withOpacity(0.2),
      200: color.withOpacity(0.3),
      300: color.withOpacity(0.4),
      400: color.withOpacity(0.5),
      500: color.withOpacity(0.6),
      600: color.withOpacity(0.7),
      700: color.withOpacity(0.8),
      800: color.withOpacity(0.9),
      900: color.withOpacity(1.0),
    };

    return MaterialColor(color.value, colorCodes);
  }

  @override
  void initState() {
    super.initState();
    if (widget.gradient != null && widget.gradient != "") {
      colors = widget.gradient!
          .split(',')
          .map(
            (colorString) => convertToMaterialColor(Color(int.parse(
                colorString.trim().replaceAll('#', '0x'),
                radix: 16))),
          )
          .toList();
    } else {
      colors = [
        Colors.redAccent,
        Colors.blueAccent,
        Colors.purpleAccent,
      ];
    }
  }

  @override
  void didUpdateWidget(covariant AppDropDownButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.gradient != oldWidget.gradient ||
        widget.isGradient != oldWidget.isGradient) {
      if (widget.gradient != null && widget.gradient != "") {
        colors = widget.gradient!
            .split(',')
            .map(
              (colorString) => convertToMaterialColor(Color(int.parse(
                  colorString.trim().replaceAll('#', '0x'),
                  radix: 16))),
            )
            .toList();
      } else {
        colors = [
          Colors.redAccent,
          Colors.blueAccent,
          Colors.purpleAccent,
        ];
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        widget.padding != 0 ? widget.padding as double : 5,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: widget.isGradient == true
              ? LinearGradient(
                  colors: colors,
                )
              : null,
          color: widget.isGradient == false
              ? widget.dropDownButtonColor ?? Colors.transparent
              : null,
          border: Border.all(
              color: widget.borderColor ?? Colors.transparent,
              width:
                  widget.borderWidth != 0 ? widget.borderWidth as double : 1),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 50),
          boxShadow: widget.boxShadow != null
              ? [
                  BoxShadow(
                      color: widget.boxShadow!,
                      blurRadius: widget.shadowRadius ?? 0)
                ]
              : null,
        ),
        child: DropdownButton<String>(
          itemHeight: 50,
          alignment: Alignment.center,
          value: widget.dropdownValue,
          menuMaxHeight: widget.menuHeight != null && widget.menuHeight != 0
              ? widget.menuHeight as double
              : 140,

          icon: Padding(
            //Icon at tail, arrow bottom is default icon
            padding: EdgeInsets.all(
              widget.padding != 0 ? widget.padding as double : 5,
            ),
            child: widget.icon != null
                ? Icon(widget.icon)
                : const Icon(
                    Icons.arrow_circle_down_sharp,
                  ),
          ),
          iconEnabledColor: widget.iconColor, //Icon color
          elevation: widget.elevation != 0 ? widget.elevation as int : 8,
          dropdownColor: widget.dropDownColor ?? Colors.blue,
          style: TextStyle(
            color: widget.textColor ?? Colors.black,
            fontSize: widget.fontSize ?? 16,
            fontWeight: widget.fontWeight ?? FontWeight.normal,
          ),

          underline: Container(
            height: widget.underlineHeight as double,
            color: (widget.underlineHeight != 0)
                ? widget.underlineColor
                : Colors.transparent,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              widget.dropdownValue = value!;
            });
          },
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
          isExpanded: widget.isExpanded!,
          items: [
            DropdownMenuItem(
              value: 'Select...',
              child: Padding(
                padding: EdgeInsets.all(
                  widget.padding != 0 || widget.padding != null
                      ? widget.padding as double
                      : 5,
                ),
                child: const Text('Select...'),
              ),
            ),
            ...widget.list!.map(
              (value) {
                if (value == widget.dropdownValue) {
                  return DropdownMenuItem(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.all(
                        widget.padding != 0 ? widget.padding as double : 5,
                      ),
                      child: Text(value,
                          style: const TextStyle(color: Colors.red)),
                    ),
                  );
                } else {
                  return DropdownMenuItem(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.all(
                        widget.padding != 0 ? widget.padding as double : 5,
                      ),
                      child: Text(value),
                    ),
                  );
                }
              },
            ).toList()
          ],
          // itemHeight: widget.menuHeight as double,
        ),
      ),
    );
  }
}