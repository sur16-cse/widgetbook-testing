import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppRadioInput<T> extends StatefulWidget {
  const AppRadioInput({super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.activeColor,
    this.secondaryWidget,
    this.borderRadius = 0,
    this.tileColor,
    this.selectedTileColor,
    this.subTile,
    this.isSelected,
    this.isDense,
    this.control,
    this.isBoxShadow,
    this.boxShadow,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.outlineWidth,
  })  : nlearn4_1 = false,
        radioBoxWidth = 0,
        radioBoxHeight = 0,
        radioBoxBorderRadius = 0,
        radioBoxBackgroundColor = null,
        iconSize = 0,
        iconBorderRadius = 0,
        iconBackgroundColor = null,
        isVerify = false,
        nlearn4_2 = false;

  const AppRadioInput.boxShadow({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.activeColor,
    this.secondaryWidget,
    this.borderRadius = 0,
    this.tileColor,
    this.selectedTileColor,
    this.subTile,
    this.isSelected,
    this.isDense,
    this.control,
    required this.boxShadow,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.outlineWidth,
  })  : nlearn4_1 = false,
        radioBoxWidth = 0,
        radioBoxHeight = 0,
        radioBoxBorderRadius = 0,
        radioBoxBackgroundColor = null,
        iconSize = 0,
        iconBorderRadius = 0,
        iconBackgroundColor = null,
        isVerify = false,
        nlearn4_2 = false,
        isBoxShadow = true;

  const AppRadioInput.nlearn4_1({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.borderRadius = 0,
    this.radioBoxWidth = 0,
    this.radioBoxHeight = 0,
    this.radioBoxBorderRadius = 0,
    this.radioBoxBackgroundColor,
    this.boxShadow,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.outlineWidth = 0,
    this.iconSize = 0,
    this.selectedTitleColor,
    this.unselectedTitleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.iconBorderRadius = 0,
    this.iconBackgroundColor,
    this.isVerify,
  })  : nlearn4_1 = true,
        nlearn4_2 = false,
        activeColor = null,
        secondaryWidget = null,
        tileColor = null,
        selectedTileColor = null,
        subTile = null,
        isSelected = null,
        isDense = null,
        control = null,
        isBoxShadow = true;

  final T value;
  final List<Map<String, dynamic>> groupValue;
  final Color? activeColor;
  final void Function(T?)? onChanged;
  final Widget? secondaryWidget;
  final num? borderRadius;
  final Color? tileColor;
  final Color? selectedTileColor;
  final Widget? subTile;
  final bool? isSelected;
  final bool? isDense;
  final ListTileControlAffinity? control;
  final num? radioBoxWidth;
  final num? radioBoxHeight;
  final num? radioBoxBorderRadius;
  final Color? radioBoxBackgroundColor;
  final bool? isBoxShadow;
  final BoxShadow? boxShadow;
  final Color? selectedBorderColor;
  final Color? unselectedBorderColor;
  final num? outlineWidth;

  final num? iconSize;
  final Color? selectedTitleColor;
  final Color? unselectedTitleColor;
  final num? titleFontSize;
  final FontWeight? titleFontWeight;
  final num? iconBorderRadius;
  final Color? iconBackgroundColor;
  final bool? isVerify;
  final bool? nlearn4_1;
  final bool? nlearn4_2;

  @override
  _AppRadioInputState<T> createState() => _AppRadioInputState<T>();
}

class _AppRadioInputState<T> extends State<AppRadioInput<T>> {
  late int? _valueMatch;
  late bool _isVerify;

  @override
  void initState() {
    super.initState();
    _valueMatch = null;
    _isVerify = false;
  }

  @override
  void didUpdateWidget(covariant AppRadioInput<T> oldWidget) {
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
          '_radioBoxBackgroundColor': const Color.fromRGBO(216, 251, 222, 1),
        };
      } else if (value == true && ans == false) {
        return {
          ' _selectedBorderColor': const Color.fromRGBO(219, 55, 35, 1),
          '_selectedCheckBoxColor': const Color.fromRGBO(219, 55, 35, 1),
          '_radioBoxBackgroundColor': const Color.fromRGBO(255, 233, 213, 1),
          '_icon': Icons.close
        };
      } else if (value == false && ans == true) {
        return {
          ' _selectedBorderColor': const Color.fromRGBO(39, 153, 116, 1),
          '_radioBoxBackgroundColor': const Color.fromRGBO(216, 251, 222, 1),
        };
      }
    }
    return {'default': Colors.pink};
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.groupValue.map((radio) {
        print(getColorFromBool(radio['value'] == _valueMatch,
            radio['isAnswer'])!['_radioBoxBackgroundColor']);
        return widget.nlearn4_1 != true
            ? Container(
                decoration: widget.isBoxShadow != false
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            widget.borderRadius != 0
                                ? widget.borderRadius as double
                                : 8),
                        boxShadow: [
                          if (_valueMatch != radio['value'])
                            widget.boxShadow ??
                                const BoxShadow(
                                  color: Color.fromRGBO(1, 1, 1, 0.1),
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 4.0,
                                  spreadRadius:
                                      -2.0, // negative value creates an "inset" effect
                                  blurStyle: BlurStyle.outer,
                                ),
                          if (_valueMatch == radio['value'])
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
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 1),
                child: RadioListTile(
                  title: Text(
                    radio['label'].toString(),
                    style: GoogleFonts.notoSans(
                      color: radio['value'] != _valueMatch
                          ? widget.unselectedTitleColor ??
                              const Color.fromRGBO(77, 77, 77, 1)
                          : widget.selectedTitleColor ??
                              const Color.fromRGBO(77, 77, 77, 1),
                      fontSize: widget.titleFontSize != null
                          ? widget.titleFontSize as double
                          : 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: widget.titleFontWeight ?? FontWeight.w400,
                    ),
                  ),
                  value: radio['value'],
                  groupValue: _valueMatch,
                  onChanged: (value) {
                    setState(() {
                      _valueMatch = value;
                    });

                    if (widget.onChanged != null) {
                      widget.onChanged!(value);
                    }
                  },
                  activeColor: widget.activeColor ?? Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        widget.borderRadius as double? ?? 0),
                    side: BorderSide(
                      color: radio['value'] == _valueMatch
                          ? widget.selectedBorderColor ?? Colors.transparent
                          : widget.unselectedBorderColor ?? Colors.transparent,
                      width: widget.outlineWidth != 0
                          ? widget.outlineWidth as double
                          : 1,
                    ),
                  ),
                  selected: widget.isSelected ?? false,
                  selectedTileColor: radio['value'] == _valueMatch
                      ? widget.selectedTileColor ?? Colors.transparent
                      : Colors.transparent,
                  // contentPadding: EdgeInsets.all(widget.),
                  tileColor: widget.tileColor ?? Colors.transparent,
                  secondary: widget.secondaryWidget,
                  subtitle: widget.subTile,
                  dense: widget.isDense ?? false,
                  controlAffinity: widget.control!,
                ))
            : Column(
                children: [
                  Container(
                    height: widget.radioBoxHeight != 0
                        ? widget.radioBoxHeight as double
                        : 40,
                    decoration: widget.isBoxShadow != false
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                widget.borderRadius != 0
                                    ? widget.borderRadius as double
                                    : 8),
                            boxShadow: [
                              radio['value'] != _valueMatch
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
                            color: radio['value'] != _valueMatch
                                ? widget.tileColor ?? Colors.white
                                : widget.selectedTileColor ?? Colors.white,
                            border: Border.all(
                              color: radio['value'] == _valueMatch
                                  ? getColorFromBool(
                                              radio['value'] == _valueMatch,
                                              radio['isAnswer'])![
                                          ' _selectedBorderColor'] ??
                                      widget.selectedBorderColor ??
                                      const Color.fromRGBO(32, 101, 209, 1)
                                  : getColorFromBool(
                                              radio['value'] == _valueMatch,
                                              radio['isAnswer'])![
                                          ' _selectedBorderColor'] ??
                                      widget.unselectedBorderColor ??
                                      Colors.transparent,
                              width: widget.outlineWidth != 0
                                  ? widget.outlineWidth as double
                                  : 1,
                            ),
                          )
                        : null,
                    margin:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 1),
                    child: Row(children: <Widget>[
                      Container(
                        height: widget.radioBoxHeight != 0
                            ? widget.radioBoxHeight as double
                            : 40,
                        width: widget.radioBoxWidth != 0
                            ? widget.radioBoxWidth as double
                            : 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                widget.radioBoxBorderRadius != 0
                                    ? widget.radioBoxBorderRadius as double
                                    : 8),
                            bottomLeft: Radius.circular(
                                widget.radioBoxBorderRadius != 0
                                    ? widget.radioBoxBorderRadius as double
                                    : 8),
                          ),
                          color: radio['value'] == _valueMatch
                              ? getColorFromBool(radio['value'] == _valueMatch,
                                          radio['isAnswer'])![
                                      '_radioBoxBackgroundColor'] ??
                                  widget.radioBoxBackgroundColor ??
                                  const Color.fromRGBO(209, 233, 252, 1)
                              : getColorFromBool(radio['value'] == _valueMatch,
                                          radio['isAnswer'])![
                                      '_radioBoxBackgroundColor'] ??
                                  const Color(0xFFDFE3E8),
                        ),
                        child: Center(
                          child: MyRadioListTile(
                            value: radio['value'],
                            groupValue: _valueMatch,
                            onChanged: (value) {
                              setState(() => _valueMatch = value!);
                            },
                            leading: radio['label'],
                            iconSize: widget.iconSize as double,
                            iconBorderRadius: widget.iconBorderRadius as double,
                            iconBackgroundColor: widget.iconBackgroundColor,
                            ansIcon: getColorFromBool(
                                radio['value'] == _valueMatch,
                                radio['isAnswer'])!['_icon'],
                            getColorFromBool: getColorFromBool(
                                radio['value'] == _valueMatch,
                                radio['isAnswer'])!['_selectedCheckBoxColor'],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          radio['label'],
                          style: GoogleFonts.notoSans(
                            color: radio['value'] != _valueMatch
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
                    ]),
                  )
                ],
              );
      }).toList(),
    );
  }
}

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final dynamic leading;
  final Widget? title;
  final ValueChanged<T?> onChanged;
  final double? iconSize;
  final double? iconBorderRadius;
  final Color? iconBackgroundColor;
  final IconData? ansIcon;
  final Color? getColorFromBool;

  const MyRadioListTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    this.title,
    this.iconSize,
    this.iconBorderRadius,
    this.iconBackgroundColor,
    this.ansIcon,
    this.getColorFromBool,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return InkWell(
      onTap: () => onChanged(value),
      child: AnimatedContainer(
          height: 20,
          width: 20,
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: isSelected
                ? getColorFromBool ??
                    iconBackgroundColor ??
                    const Color.fromRGBO(23, 78, 179, 1)
                : Colors.transparent,
            border: Border.all(
              color: value != groupValue
                  ? const Color.fromRGBO(145, 158, 171, 1)
                  : Colors.transparent,
            ),
          ),
          child: isSelected
              ? Icon(
                  ansIcon ?? Icons.check,
                  color: Colors.white,
                  size: iconSize != 0 ? iconSize : 16,
                )
              : null),
    );
  }
}