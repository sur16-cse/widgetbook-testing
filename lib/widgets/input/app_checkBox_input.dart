import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppCheckboxInput extends StatefulWidget {
  const AppCheckboxInput({
    super.key,
    required this.onChanged,
    this.subtitle,
    this.tileColor,
    this.selectedTileColor,
    this.checkColor,
    this.borderRadius = 0,
    this.isDense,
    this.secondaryWidget,
    this.control,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.selectedCheckboxColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.checkBoxborderRadius = 0,
    this.isBoxShadow,
    this.boxShadow,
    this.isVerify,
  })  : nlearn4_1 = false,
        nlearn4_2 = false,
        checkBoxBackgroundColor = null;

  const AppCheckboxInput.boxShadow({
    super.key,
    required this.onChanged,
    this.subtitle,
    this.tileColor,
    this.selectedTileColor,
    this.checkColor,
    this.borderRadius = 0,
    this.isDense,
    this.secondaryWidget,
    this.control,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.selectedCheckboxColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.checkBoxborderRadius = 0,
    this.boxShadow,
    this.isVerify,
  })  : nlearn4_1 = false,
        isBoxShadow = true,
        nlearn4_2 = false,
        checkBoxBackgroundColor = null;

  const AppCheckboxInput.leading({
    super.key,
    required this.onChanged,
    this.subtitle,
    this.tileColor,
    this.selectedTileColor,
    this.checkColor,
    this.borderRadius = 0,
    this.isDense,
    this.secondaryWidget,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.selectedCheckboxColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.checkBoxborderRadius = 0,
    this.isVerify,
  })  : nlearn4_1 = false,
        isBoxShadow = false,
        control = ListTileControlAffinity.leading,
        nlearn4_2 = false,
        boxShadow = null,
        checkBoxBackgroundColor = null;

  const AppCheckboxInput.leadingCircular({
    super.key,
    required this.onChanged,
    this.subtitle,
    this.tileColor,
    this.selectedTileColor,
    this.checkColor,
    this.borderRadius = 0,
    this.isDense,
    this.secondaryWidget,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.selectedCheckboxColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.isVerify,
  })  : nlearn4_1 = false,
        isBoxShadow = false,
        control = ListTileControlAffinity.leading,
        checkBoxborderRadius = 10,
        nlearn4_2 = false,
        boxShadow = null,
        checkBoxBackgroundColor = null;

  const AppCheckboxInput.trailing({
    super.key,
    required this.onChanged,
    this.subtitle,
    this.tileColor,
    this.selectedTileColor,
    this.checkColor,
    this.borderRadius = 0,
    this.isDense,
    this.secondaryWidget,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.selectedCheckboxColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.checkBoxborderRadius,
    this.isVerify,
  })  : nlearn4_1 = false,
        isBoxShadow = false,
        control = ListTileControlAffinity.trailing,
        nlearn4_2 = false,
        checkBoxBackgroundColor = null,
        boxShadow = null;

  const AppCheckboxInput.trailingCircular({
    super.key,
    required this.onChanged,
    this.subtitle,
    this.tileColor,
    this.selectedTileColor,
    this.checkColor,
    this.borderRadius = 0,
    this.isDense,
    this.secondaryWidget,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.selectedCheckboxColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.isVerify,
  })  : nlearn4_1 = false,
        isBoxShadow = false,
        control = ListTileControlAffinity.trailing,
        checkBoxborderRadius = 10,
        nlearn4_2 = false,
        checkBoxBackgroundColor = null,
        boxShadow = null;

  const AppCheckboxInput.nlearn4_1({
    super.key,
    required this.onChanged,
    this.checkColor,
    this.borderRadius = 8,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.unselectedBorderColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.boxShadow,
    this.selectedCheckboxColor,
    this.selectedBorderColor = const Color.fromRGBO(0, 131, 176, 1),
    this.checkBoxBackgroundColor,
    this.isVerify,
  })  : nlearn4_1 = true,
        isBoxShadow = true,
        isDense = false,
        nlearn4_2 = false,
        tileColor = Colors.white,
        selectedTileColor = Colors.white,
        subtitle = null,
        secondaryWidget = null,
        control = null,
        checkBoxborderRadius = 2;

  const AppCheckboxInput.nlearn4_2({
    super.key,
    required this.onChanged,
    this.checkColor,
    this.borderRadius = 0,
    this.isDense,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor = const Color.fromRGBO(32, 101, 209, 1),
    this.unselectedBorderColor,
    this.selectedCheckboxColor,
    this.unselectedCheckboxColor,
    this.checkBoxborderWidth = 0,
    this.outlineBorder = 0,
    required this.checkBoxValue,
    this.boxShadow,
    this.isVerify,
  })  : nlearn4_1 = false,
        isBoxShadow = true,
        control = ListTileControlAffinity.trailing,
        checkBoxborderRadius = 10,
        nlearn4_2 = true,
        secondaryWidget = null,
        subtitle = null,
        tileColor = Colors.white,
        selectedTileColor = Colors.white,
        checkBoxBackgroundColor = null;

  final Widget? subtitle;
  final Widget? secondaryWidget;
  final Color? tileColor;
  final Color? selectedTileColor;
  final Color? checkColor;
  final num? checkBoxborderRadius;
  final num? borderRadius;
  final bool? isDense;
  final ListTileControlAffinity? control;
  final bool? nlearn4_1;
  final Color? selectedTitleColor;
  final Color? unselectedTitleColor;
  final num? titleFontSize;
  final FontWeight? titleFontWeight;
  final Color? selectedBorderColor;
  final Color? unselectedBorderColor;
  final Color? selectedCheckboxColor;
  final Color? unselectedCheckboxColor;
  final num? checkBoxborderWidth;
  final num? outlineBorder;
  final List<Map<String, dynamic>> checkBoxValue;
  final ValueChanged<List<Map<String, dynamic>>> onChanged;
  final bool? isBoxShadow;
  final BoxShadow? boxShadow;
  final bool? nlearn4_2;
  final Color? checkBoxBackgroundColor;
  final bool? isVerify;

  @override
  _AppCheckboxInputState createState() => _AppCheckboxInputState();
}

class _AppCheckboxInputState extends State<AppCheckboxInput> {
  late List<Map<String, dynamic>> _checkBoxValue;
  late List<double> list;
  late bool _isVerify;

  @override
  void initState() {
    super.initState();
    _checkBoxValue = widget.checkBoxValue;
    _isVerify = false;
  }

  @override
  void didUpdateWidget(covariant AppCheckboxInput oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isVerify != widget.isVerify) {
      _isVerify = widget.isVerify!;
    }
  }

  Map<String, dynamic>? getColorFromBool(bool value, bool ans) {
    if (_isVerify == true) {
      if (value == true && ans == true) {
        return {
          ' _selectedBorderColor': const Color.fromRGBO(39, 153, 116, 1),
          '_selectedCheckBoxColor': const Color.fromRGBO(39, 153, 116, 1),
          '_checkBoxBackgroundColor': const Color.fromRGBO(216, 251, 222, 1),
        };
      } else if (value == true && ans == false) {
        return {
          ' _selectedBorderColor': const Color.fromRGBO(219, 55, 35, 1),
          '_selectedCheckBoxColor': const Color.fromRGBO(219, 55, 35, 1),
          '_checkBoxBackgroundColor': const Color.fromRGBO(255, 233, 213, 1),
          'iconClose': true
        };
      } else if (value == false && ans == true) {
        return {
          ' _selectedBorderColor': const Color.fromRGBO(39, 153, 116, 1),
          '_checkBoxBackgroundColor': const Color.fromRGBO(216, 251, 222, 1),
        };
      }
    }
    return {'default': Colors.pink};
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _checkBoxValue.map(
        (item) {
          return widget.nlearn4_1 == false
              ? Container(
                  decoration: widget.isBoxShadow != false
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              widget.borderRadius != 0
                                  ? widget.borderRadius as double
                                  : 8),
                          boxShadow: [
                            if (widget.nlearn4_2 != true)
                              widget.boxShadow ??
                                  const BoxShadow(
                                    color: Color.fromRGBO(1, 1, 1, 0.1),
                                    offset: Offset(-2.0, -2.0),
                                    blurRadius: 4.0,
                                    spreadRadius:
                                        -2.0, // negative value creates an "inset" effect
                                    blurStyle: BlurStyle.outer,
                                  ),
                            if (widget.nlearn4_2 == true)
                              const BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.08),
                                offset: Offset(0, 2.0),
                                blurRadius: 4.0,
                                spreadRadius: 1.0,
                                blurStyle: BlurStyle.outer,
                              ),
                          ],
                        )
                      : null,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 1),
                  child: CheckboxListTile(
                    title: Text(
                      item['label'],
                      style: GoogleFonts.notoSans(
                        color: item['value'] == true
                            ? widget.selectedTitleColor ?? Colors.black
                            : widget.unselectedTitleColor ?? Colors.black,
                        fontSize: widget.titleFontSize != null
                            ? widget.titleFontSize as double
                            : 14,
                        fontStyle: FontStyle.normal,
                        fontWeight: widget.titleFontWeight ?? FontWeight.w400,
                      ),
                    ),
                    subtitle: item['subtitle'] ?? (widget.subtitle),
                    value: item['value'],
                    onChanged: (bool? value) {
                      setState(() {
                        item['value'] = value!;
                        widget.onChanged(_checkBoxValue);
                      });
                    },
                    tileColor: widget.tileColor ?? Colors.transparent,
                    selectedTileColor:
                        widget.selectedTileColor ?? Colors.transparent,
                    selected: item['value'] ?? false,
                    activeColor: item['value'] == true
                        ? widget.selectedCheckboxColor ?? Colors.blue
                        : Colors.transparent,
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          widget.checkBoxborderRadius != 0
                              ? widget.checkBoxborderRadius as double
                              : 2),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: item['value'] != true
                              ? widget.unselectedBorderColor ??
                                  Colors.transparent
                              : widget.selectedBorderColor ??
                                  Colors.transparent,
                          width: widget.outlineBorder != 0
                              ? widget.outlineBorder as double
                              : 1),
                      borderRadius: BorderRadius.circular(
                          widget.borderRadius != 0
                              ? widget.borderRadius as double
                              : 8),
                    ),
                    checkColor: widget.checkColor ?? Colors.white,
                    side: BorderSide(
                        width: widget.checkBoxborderWidth != 0
                            ? widget.checkBoxborderWidth as double
                            : 1.6,
                        color: widget.unselectedCheckboxColor ?? Colors.black),
                    secondary:
                        item['secondaryWidget'] ?? (widget.secondaryWidget),
                    dense: widget.isDense ?? false,
                    controlAffinity: widget.control!,
                  ),
                )
              : Container(
                  height: 50,
                  decoration: widget.isBoxShadow != false
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              widget.borderRadius != 0
                                  ? widget.borderRadius as double
                                  : 8),
                          boxShadow: [
                            item['value'] != true
                                ? widget.boxShadow ??
                                    const BoxShadow(
                                      color: Color.fromRGBO(1, 1, 1, 0.2),
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                      blurStyle: BlurStyle.inner,
                                    )
                                : const BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.08),
                                    offset: Offset(0, 2.0),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    blurStyle: BlurStyle.inner,
                                  ),
                          ],
                          color: item['value'] != true
                              ? widget.tileColor ?? Colors.white
                              : widget.selectedTileColor ?? Colors.white,
                          border: Border.all(
                            color: item['value'] == true
                                ? getColorFromBool(
                                            item['value'], item['isAnswer'])![
                                        ' _selectedBorderColor'] ??
                                    widget.selectedBorderColor ??
                                    const Color.fromRGBO(32, 101, 209, 1)
                                : getColorFromBool(
                                            item['value'], item['isAnswer'])![
                                        ' _selectedBorderColor'] ??
                                    widget.unselectedBorderColor ??
                                    Colors.transparent,
                            width: widget.outlineBorder != 0
                                ? widget.outlineBorder as double
                                : 1,
                          ),
                        )
                      : null,
                  margin:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 1),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 51,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft:
                                Radius.circular(widget.borderRadius as double),
                            bottomLeft:
                                Radius.circular(widget.borderRadius as double),
                          ),
                          color: item['value'] == true
                              ? getColorFromBool(
                                          item['value'], item['isAnswer'])![
                                      '_checkBoxBackgroundColor'] ??
                                  widget.checkBoxBackgroundColor ??
                                  const Color.fromRGBO(209, 233, 252, 1)
                              : getColorFromBool(
                                          item['value'], item['isAnswer'])![
                                      '_checkBoxBackgroundColor'] ??
                                  const Color(0xFFDFE3E8),
                        ),
                        child: item['value'] == true &&
                                item['isAnswer'] == false &&
                                getColorFromBool(item['value'],
                                        item['isAnswer'])!['iconClose'] ==
                                    true
                            ? Center(
                                child: Custom_Checkbox(
                                    onChange: (bool? value) {
                                      setState(() {
                                        item['value'] = value!;
                                        widget.onChanged(_checkBoxValue);
                                      });
                                    },
                                    backgroundColor:
                                        const Color.fromRGBO(219, 55, 35, 1),
                                    icon: Icons.close,
                                    size: 20,
                                    iconColor: Colors.white,
                                    borderColor: Colors.grey,
                                    iconSize: 16,
                                    isChecked: item['value']),
                              )
                            : Checkbox(
                                value: item['value'],
                                onChanged: (bool? value) {
                                  setState(() {
                                    item['value'] = value!;
                                    widget.onChanged(_checkBoxValue);
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      widget.checkBoxborderRadius != 0
                                          ? widget.checkBoxborderRadius
                                              as double
                                          : 2),
                                ),
                                activeColor: item['value'] == true
                                    ? getColorFromBool(item['value'],
                                                item['isAnswer'])![
                                            '_selectedCheckBoxColor'] ??
                                        widget.selectedCheckboxColor ??
                                        const Color.fromRGBO(32, 101, 209, 1)
                                    : Colors.transparent,
                                checkColor: widget.checkColor ?? Colors.white,
                                side: BorderSide(
                                  width: widget.checkBoxborderWidth != 0
                                      ? widget.checkBoxborderWidth as double
                                      : 1.6,
                                  color: widget.unselectedCheckboxColor ??
                                      const Color.fromRGBO(145, 158, 171, 1),
                                ),
                              ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          item['label'],
                          style: GoogleFonts.notoSans(
                            color: item['value'] != true
                                ? widget.unselectedTitleColor ??
                                    const Color.fromRGBO(77, 77, 77, 1)
                                : widget.selectedTitleColor ??
                                    const Color.fromRGBO(77, 77, 77, 1),
                            fontSize: widget.titleFontSize != null
                                ? widget.titleFontSize as double
                                : 14,
                            fontStyle: FontStyle.normal,
                            fontWeight:
                                widget.titleFontWeight ?? FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ).toList(),
    );
  }
}

class Custom_Checkbox extends StatefulWidget {
  double? size;
  double? iconSize;
  Function onChange;
  Color? backgroundColor;
  Color? iconColor;
  Color? borderColor;
  IconData? icon;
  bool isChecked;

  Custom_Checkbox({
    Key? key,
    this.size = 16,
    this.iconSize,
    required this.onChange,
    this.backgroundColor,
    this.iconColor,
    this.icon,
    this.borderColor,
    required this.isChecked,
  }) : super(key: key);

  @override
  State<Custom_Checkbox> createState() => _Custom_CheckboxState();
}

class _Custom_CheckboxState extends State<Custom_Checkbox> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.onChange(isChecked);
        });
      },
      child: AnimatedContainer(
          height: widget.size ?? 28,
          width: widget.size ?? 28,
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              color: isChecked
                  ? widget.backgroundColor ?? Colors.blue
                  : Colors.transparent,
              border: Border.all(color: widget.borderColor ?? Colors.black)),
          child: isChecked
              ? Icon(
                  widget.icon ?? Icons.close,
                  color: widget.iconColor ?? Colors.white,
                  size: widget.iconSize ?? 10,
                )
              : null),
    );
  }
}