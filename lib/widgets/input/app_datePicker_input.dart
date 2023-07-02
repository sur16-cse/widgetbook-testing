import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppDatePicker extends StatefulWidget {
  const AppDatePicker({
    Key? key,
    this.labelText,
    this.controller,
    this.onSaved,
    this.validator,
    this.cancelText,
    this.helperText,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.datePickerTheme,
    this.primary,
    this.onPrimary,
    this.surface,
    this.onSurface,
    this.buttonBackground,
    this.buttonForeground,
    this.textScaleFactor,
    this.fieldLabelText,
    this.fieldHintText,
    required this.confirmText,
    this.inputRadius,
    this.inputWidth = 0,
    this.inputColor,
    this.inputFillColor,
    this.inputActiveIndicatorColor,
    this.inputFloatingLabelColor,
    this.cursorColor,
    this.selectionColor,
    this.buttonWidth = 0,
    this.buttonPadding = 0,
    this.buttonBorderRadius = 0,
    this.buttonElevation = 0,
    this.dialogBackgroundColor,
    this.toolTipTopMargin = 0,
    this.showDuration = 0,
    this.tooltipHeight = 0,
    this.tooltipColor,
    this.tooltipBorderRadius = 0,
    this.tooltipBorderWidth = 0,
    this.tooltipBorderColor,
    this.tooltipTextColor,
    this.buttonBorderColor,
    this.boxShadow,
    this.locale,
    this.onPressed,
    this.contextDatePicker,
  }) : super(key: key);

  final String? labelText;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final FormFieldValidator<DateTime>? validator;
  final String? cancelText;
  final String? confirmText;
  final String? helperText;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final ThemeData? datePickerTheme;
  final Color? primary;
  final Color? onPrimary;
  final Color? surface;
  final Color? onSurface;
  final Color? buttonBackground;
  final Color? buttonForeground;
  final num? buttonWidth;
  final num? buttonPadding;
  final num? buttonBorderRadius;
  final Color? buttonBorderColor;
  final num? buttonElevation;
  final num? textScaleFactor;
  final String? fieldLabelText;
  final String? fieldHintText;
  final num? inputRadius;
  final num? inputWidth;
  final Color? inputColor;
  final Color? inputFillColor;
  final Color? inputActiveIndicatorColor;
  final Color? inputFloatingLabelColor;
  final Color? cursorColor;
  final Color? selectionColor;
  final Color? dialogBackgroundColor;
  final num? toolTipTopMargin;
  final num? showDuration;
  final num? tooltipHeight;
  final Color? tooltipColor;
  final num? tooltipBorderRadius;
  final num? tooltipBorderWidth;
  final Color? tooltipBorderColor;
  final Color? tooltipTextColor;
  final BoxShadow? boxShadow;
  final Locale? locale;
  final Function? onPressed;
  final BuildContext? contextDatePicker;

  @override
  _AppDatePickerState createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime _selectedDate = DateTime.now();
  TextEditingController _controller = TextEditingController();

  Future<dynamic> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.initialDate ?? _selectedDate,
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime(2100),
      cancelText: widget.cancelText,
      confirmText: widget.confirmText ?? 'OK',
      helpText: widget.helperText,
      fieldHintText: widget.fieldHintText,
      fieldLabelText: widget.fieldLabelText,
      initialDatePickerMode: DatePickerMode.day,
      initialEntryMode: DatePickerEntryMode.calendar,
      //const Locale('fr', 'FR')
      locale: widget.locale ?? Localizations.localeOf(context),
      useRootNavigator: true,
      keyboardType: TextInputType.numberWithOptions(),

      builder: (context, child) => Theme(
        data: widget.datePickerTheme ??
            Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: widget.primary ?? Colors.blue, //background color
                onPrimary: widget.onPrimary ??
                    Colors.white, //above background means picker date color
                surface: widget.surface ?? Colors.grey,
                onSurface: widget.onSurface ?? Colors.black, // date color
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: widget.inputRadius != null
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            widget.inputRadius != 0
                                ? widget.inputRadius as double
                                : 0),
                        borderSide: BorderSide(
                          width: widget.inputWidth != 0
                              ? widget.inputWidth as double
                              : 0,
                          color: widget.inputColor ?? Colors.transparent,
                        ),
                      )
                    : UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: widget.inputWidth != 0
                              ? widget.inputWidth as double
                              : 0,
                          color: widget.inputColor ?? Colors.transparent,
                        ),
                      ),
                filled: true,
                fillColor: widget.inputFillColor ?? Colors.transparent,
                activeIndicatorBorder: BorderSide(
                  color: widget.inputActiveIndicatorColor ??
                      Theme.of(context).colorScheme.primary,
                  width:
                      widget.inputWidth != 0 ? widget.inputWidth as double : 0,
                ),
                floatingLabelStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: widget.inputFloatingLabelColor ?? Colors.black87,
                ),
              ),
              // dropdownMenuTheme: DropdownMenuThemeData(
              //     textStyle: TextStyle(
              //         color: Colors.purpleAccent,
              //         fontWeight: FontWeight.bold,
              //         decorationColor: Colors.red),
              //     inputDecorationTheme: InputDecorationTheme(
              //         fillColor: Colors.pink, filled: true),),
              textSelectionTheme: TextSelectionThemeData(
                cursorColor:
                    widget.cursorColor ?? Theme.of(context).colorScheme.primary,
                selectionColor: widget.selectionColor ?? Colors.transparent,
              ),
              dialogBackgroundColor:
                  widget.dialogBackgroundColor ?? Colors.white,
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  backgroundColor:
                      widget.buttonBackground ?? Colors.transparent,
                  foregroundColor: widget.buttonForeground ?? Colors.purple,
                  elevation: widget.buttonElevation != 0
                      ? widget.buttonElevation as double
                      : 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      widget.buttonBorderRadius != 0
                          ? widget.buttonBorderRadius as double
                          : 0,
                    ),
                    side: BorderSide(
                      width: widget.buttonWidth != 0
                          ? widget.buttonWidth as double
                          : 0,
                      color: widget.buttonBorderColor ?? Colors.transparent,
                    ),
                  ),
                  padding: widget.buttonPadding != 0
                      ? EdgeInsets.all(widget.buttonPadding as double)
                      : EdgeInsets.all(10),
                ),
              ),
              // useMaterial3: true,
              tooltipTheme: TooltipThemeData(
                margin: EdgeInsets.only(
                  top: widget.toolTipTopMargin != 0
                      ? widget.toolTipTopMargin as double
                      : 2,
                ),
                showDuration: Duration(
                  milliseconds: widget.showDuration != 0
                      ? widget.showDuration as int
                      : 50,
                ),
                height: widget.tooltipHeight != 0
                    ? widget.tooltipHeight as double
                    : 10,
                decoration: BoxDecoration(
                  color: widget.tooltipColor ?? Colors.black26,
                  borderRadius: BorderRadius.circular(
                      widget.tooltipBorderRadius != 0
                          ? widget.tooltipBorderRadius as double
                          : 0),
                  border: widget.tooltipBorderWidth != 0
                      ? Border.all(
                          width: widget.tooltipBorderWidth as double,
                          color: widget.tooltipBorderColor ?? Colors.black,
                        )
                      : Border.all(width: 0, color: Colors.transparent),
                  boxShadow:
                      widget.boxShadow != null ? [widget.boxShadow!] : null,
                ),
                textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: widget.tooltipTextColor ?? Colors.white,
                ),
              ),
            ),
        child: Container(
          height: 500,
          width: 700,
          child: child!,
        ),
      ),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = DateFormat('dd MMMM yyyy').format(_selectedDate);
      });

      if (widget.onSaved != null) {
        widget.onSaved!(DateFormat('dd MMMM yyyy').format(_selectedDate));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.text = ''; // set initial value to empty string
  }

  @override
  Widget build(BuildContext context) {
    print(widget.contextDatePicker);
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () => _selectDate(context),
        ),
      ),
      readOnly: true,
      controller: _controller,
      validator: (value) {
        if (value == null && widget.validator != null) {
          return widget.validator!(null);
        }
        return null;
      },
      onChanged: widget.onSaved,
    );
  }
}