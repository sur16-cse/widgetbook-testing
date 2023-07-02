import 'package:flutter/material.dart';

class AppTextFormFieldInput extends StatefulWidget {
  const AppTextFormFieldInput({
    super.key,
    this.controller,
    this.hintText,
    this.validatorString,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    required this.onChanged,
    this.initialValue,
    this.keyboardType,
    this.borderRadius,
    this.borderColor,
    this.fillColor,
    this.onSaved,
    this.outlineWidth,
    this.focusBorder,
    this.hintColor,
    this.labelColor,
    this.maxLines,
    this.previousValue,
    this.maxLength,
    this.buildCounter,
    this.autoCorrect,
    this.textInputAction,
    this.textAlign,
    this.collapsed = false,
    this.helperText,
    this.underlineHeight,
    this.obscuringCharacter,
    this.padding,
    this.floatingLabelBehavior,
    this.hintWeight,
    this.labelWeight,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.inputColor,
    this.inputFontWeight,
    this.inputFontSize,
    this.textCapitalization,
    this.validateForm,
    this.preIconSize,
    this.sufIconSize,
  })  : defaultTheme = false,
        boxShadow = null;

  const AppTextFormFieldInput.narayana({
    super.key,
    this.controller,
    this.hintText,
    this.validatorString,
    this.labelText = 'Full Name',
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    required this.onChanged,
    this.initialValue,
    this.keyboardType,
    this.borderRadius,
    this.borderColor,
    this.fillColor,
    this.onSaved,
    this.outlineWidth,
    this.hintColor,
    this.labelColor,
    this.maxLines,
    this.previousValue,
    this.maxLength,
    this.buildCounter,
    this.autoCorrect,
    this.textInputAction,
    this.textAlign,
    this.collapsed = false,
    this.helperText,
    this.obscuringCharacter,
    this.padding,
    this.floatingLabelBehavior,
    this.hintWeight,
    this.labelWeight,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.inputColor,
    this.inputFontWeight,
    this.inputFontSize,
    this.textCapitalization,
    this.defaultTheme = true,
    this.boxShadow,
    this.validateForm,
    this.preIconSize,
    this.sufIconSize,
  })  : underlineHeight = 0,
        focusBorder = null;

  const AppTextFormFieldInput.underline({
    super.key,
    this.controller,
    this.hintText,
    this.validatorString,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    required this.onChanged,
    this.initialValue,
    this.keyboardType,
    this.fillColor,
    this.onSaved,
    this.focusBorder,
    this.hintColor,
    this.labelColor,
    this.maxLines,
    this.previousValue,
    this.maxLength,
    this.buildCounter,
    this.autoCorrect,
    this.textInputAction,
    this.textAlign,
    this.collapsed = false,
    this.helperText,
    this.underlineHeight,
    this.obscuringCharacter,
    required this.padding,
    this.floatingLabelBehavior,
    this.hintWeight,
    this.labelWeight,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.inputColor,
    this.inputFontWeight,
    this.inputFontSize,
    this.textCapitalization,
    this.validateForm,
    this.borderColor,
    this.preIconSize,
    this.sufIconSize,
  })  : defaultTheme = false,
        boxShadow = null,
        borderRadius = null,
        outlineWidth = 0;

  const AppTextFormFieldInput.outline({
    super.key,
    this.controller,
    this.hintText,
    this.validatorString,
    this.labelText = 'Full Name',
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    required this.onChanged,
    this.initialValue,
    this.keyboardType,
    this.borderRadius,
    this.borderColor,
    this.fillColor,
    this.onSaved,
    this.outlineWidth,
    this.hintColor,
    this.labelColor,
    this.maxLines,
    this.previousValue,
    this.maxLength,
    this.buildCounter,
    this.autoCorrect,
    this.textInputAction,
    this.textAlign,
    this.collapsed = false,
    this.helperText,
    this.obscuringCharacter,
    this.padding,
    this.floatingLabelBehavior,
    this.hintWeight,
    this.labelWeight,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.inputColor,
    this.inputFontWeight,
    this.inputFontSize,
    this.textCapitalization,
    this.validateForm,
    this.focusBorder,
    this.preIconSize,
    this.sufIconSize,
  })  : underlineHeight = null,
        boxShadow = null,
        defaultTheme = false;

  const AppTextFormFieldInput.empty({
    super.key,
    required this.controller,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.validatorString,
    this.fillColor,
    this.onSaved,
    this.focusBorder,
    this.maxLines,
    this.maxLength,
    this.autoCorrect,
    this.textInputAction,
    this.underlineHeight,
    this.padding,
    this.inputColor,
    this.inputFontWeight,
    this.inputFontSize,
    this.textCapitalization,
    this.validateForm,
    this.borderRadius,
    this.borderColor,
    this.outlineWidth,
    this.obscureText,
    this.obscuringCharacter,
    this.textAlign,
  })  : hintText = '',
        initialValue = null,
        labelText = '',
        hintColor = null,
        labelColor = null,
        prefixIcon = null,
        suffixIcon = null,
        collapsed = false,
        helperText = '',
        previousValue = null,
        buildCounter = false,
        defaultTheme = false,
        boxShadow = null,
        floatingLabelBehavior = null,
        icon = null,
        iconColor = Colors.transparent,
        iconSize = 0,
        hintWeight = null,
        labelWeight = null,
        preIconSize = 0,
        sufIconSize = 0;

  const AppTextFormFieldInput.multiline({
    super.key,
    required this.controller,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.validatorString,
    this.fillColor,
    this.onSaved,
    this.focusBorder,
    this.maxLines,
    this.maxLength,
    this.autoCorrect,
    this.textInputAction,
    this.padding,
    this.inputColor,
    this.inputFontWeight,
    this.inputFontSize,
    this.textCapitalization,
    this.validateForm,
    this.borderRadius,
    this.borderColor,
    this.outlineWidth,
    this.obscureText,
    this.obscuringCharacter,
    this.textAlign,
    this.hintText,
    this.labelText,
    this.hintColor,
    this.hintWeight,
    this.labelColor,
    this.labelWeight,
    this.floatingLabelBehavior,
    this.helperText,
    this.buildCounter,
  })  : initialValue = null,
        prefixIcon = null,
        suffixIcon = null,
        collapsed = false,
        previousValue = null,
        defaultTheme = false,
        boxShadow = null,
        icon = null,
        iconColor = Colors.transparent,
        iconSize = 0,
        underlineHeight = null,
        sufIconSize = 0,
        preIconSize = 0;

  const AppTextFormFieldInput.combined({
    super.key,
    this.controller,
    this.hintText,
    this.validatorString,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    required this.onChanged,
    this.initialValue,
    this.keyboardType,
    this.borderRadius,
    this.borderColor,
    this.fillColor,
    this.onSaved,
    this.outlineWidth,
    this.focusBorder,
    this.hintColor,
    this.labelColor,
    this.maxLines,
    this.previousValue,
    this.maxLength,
    this.buildCounter,
    this.autoCorrect,
    this.textInputAction,
    this.textAlign,
    this.collapsed = false,
    this.helperText,
    this.underlineHeight,
    this.obscuringCharacter,
    required this.padding,
    this.floatingLabelBehavior,
    this.hintWeight,
    this.labelWeight,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.inputColor,
    this.inputFontWeight,
    this.inputFontSize,
    this.textCapitalization,
    this.validateForm,
    this.preIconSize,
    this.sufIconSize,
  })  : defaultTheme = false,
        boxShadow = null;

  final TextEditingController? controller;
  final String? initialValue;
  final String? previousValue;
  final String? hintText;
  final IconData? prefixIcon;
  final bool? obscureText;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  // final Function(String?)? onSavedDatePicker;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validatorString;
  final String? labelText;
  final num? borderRadius;
  final Color? borderColor;
  final Color? fillColor;
  final num? outlineWidth;
  final Color? focusBorder;
  final Color? hintColor;
  final Color? labelColor;
  final num? maxLines;
  final num? maxLength;
  final bool? buildCounter;
  final IconData? suffixIcon;
  final bool? autoCorrect;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final bool? collapsed;
  final String? helperText;
  final num? underlineHeight;
  final String? obscuringCharacter;
  final String? padding;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final FontWeight? hintWeight;
  final FontWeight? labelWeight;
  final IconData? icon;
  final Color? iconColor;
  final num? iconSize;
  final Color? inputColor;
  final FontWeight? inputFontWeight;
  final double? inputFontSize;
  final TextCapitalization? textCapitalization;
  final bool? defaultTheme;
  final BoxShadow? boxShadow;
  final bool? validateForm;
  final num? preIconSize;
  final num? sufIconSize;

  @override
  _AppTextFormFieldInputState createState() => _AppTextFormFieldInputState();
}

class _AppTextFormFieldInputState extends State<AppTextFormFieldInput> {
  late List<double> list;
  late String? error;

  FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _splitPadding();
    error = widget.validatorString!(widget.controller?.text);
    if (widget.validateForm == true) {
      error = _validateInput(widget.controller?.text);
    }
  }

  @override
  void didUpdateWidget(covariant AppTextFormFieldInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.padding != widget.padding) {
      _splitPadding();
    }
    if (oldWidget.validatorString != widget.validatorString) {
      error = widget.validatorString!(widget.controller?.text);
    }

    if (widget.validateForm == true) {
      error = _validateInput(widget.controller?.text);
    }
  }

  void _splitPadding() {
    list = widget.padding?.split(',').map((s) => double.parse(s)).toList() ??
        [8, 8, 8, 8];
  }

  @override
  void dispose() {
    widget.controller!.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    widget.onChanged!(value);
  }

  void _onSaved(String? value) {
    widget.onSaved!(value);
  }

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return '${widget.labelText != '' ? widget.labelText : 'Input'} is required';
    }
    if (widget.keyboardType == TextInputType.emailAddress) {
      if (!RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
        return 'Please enter a valid email address';
      }
    }
    if (widget.keyboardType == TextInputType.number) {
      if (!RegExp(r'^\d+$').hasMatch(value)) {
        return 'Please enter only digits';
      }
    }
    if (widget.keyboardType == TextInputType.visiblePassword) {
      if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
          .hasMatch(value)) {
        return 'Please enter a valid password (at least 8 characters with at least one uppercase letter, one lowercase letter, and one digit)';
      }
    }
    if (widget.keyboardType == TextInputType.phone) {
      if (!RegExp(r'^\d{10}$').hasMatch(value)) {
        return 'Please enter a valid 10 digit phone number';
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return widget.defaultTheme != true
        ? TextFormField(
            decoration: widget.collapsed != true
                ? InputDecoration(
                    isDense: true,
                    hintText: widget.hintText ?? '',
                    hintStyle: TextStyle(
                      color: widget.hintColor,
                      fontWeight: widget.hintWeight,
                    ),
                    labelText: widget.labelText ?? '',
                    labelStyle: TextStyle(
                      color: widget.labelColor,
                      fontWeight: widget.labelWeight,
                    ),
                    floatingLabelBehavior: widget.floatingLabelBehavior ??
                        FloatingLabelBehavior.auto,
                    prefix: widget.prefixIcon != null
                        ? Padding(
                            padding: const EdgeInsets.only(left: 5, right: 2),
                            child: Icon(
                              widget.prefixIcon,
                              size: widget.preIconSize as double? ?? 14,
                            ),
                          )
                        : null,
                    suffix: widget.suffixIcon != null
                        ? Padding(
                            padding: const EdgeInsets.only(left: 5, right: 2),
                            child: Icon(
                              widget.suffixIcon,
                              size: widget.sufIconSize as double? ?? 14,
                            ),
                          )
                        : null,
                    helperText: widget.helperText ?? '',
                    enabledBorder: widget.outlineWidth == 0
                        ? UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: widget.underlineHeight != 0
                                  ? widget.underlineHeight as double
                                  : 1,
                              color: widget.borderColor ?? Colors.grey,
                            ),
                          )
                        : OutlineInputBorder(
                            borderRadius: widget.borderRadius != null
                                ? BorderRadius.circular(
                                    widget.borderRadius as double)
                                : BorderRadius.circular(0),
                            borderSide: widget.outlineWidth != 0
                                ? BorderSide(
                                    width: widget.outlineWidth as double,
                                    color: widget.borderColor ??
                                        Colors.transparent,
                                  )
                                : BorderSide.none,
                          ),
                    focusedBorder: widget.outlineWidth != 0
                        ? OutlineInputBorder(
                            borderRadius: widget.borderRadius != null
                                ? BorderRadius.circular(
                                    widget.borderRadius as double)
                                : BorderRadius.circular(0),
                            borderSide: widget.outlineWidth != 0
                                ? BorderSide(
                                    width: widget.outlineWidth as double? ?? 0,
                                    color:
                                        widget.focusBorder ?? Colors.blueAccent,
                                  )
                                : BorderSide.none,
                          )
                        : UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: widget.underlineHeight != 0
                                    ? widget.underlineHeight as double
                                    : 1,
                                color: widget.focusBorder ?? Colors.blueAccent),
                          ),
                    errorBorder: widget.outlineWidth != 0
                        ? OutlineInputBorder(
                            borderRadius: widget.borderRadius != null
                                ? BorderRadius.circular(
                                    widget.borderRadius as double)
                                : BorderRadius.circular(0),
                            borderSide: widget.borderRadius != null
                                ? BorderSide(
                                    width: widget.outlineWidth as double? ?? 0,
                                    color: Colors.redAccent,
                                  )
                                : BorderSide.none,
                          )
                        : UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: widget.underlineHeight != 0
                                    ? widget.underlineHeight as double
                                    : 1,
                                color: Colors.redAccent),
                          ),
                    fillColor: widget.fillColor?.withOpacity(0.8) ??
                        Colors.transparent,
                    filled: true,
                    contentPadding: EdgeInsets.only(
                      left: list[0],
                      top: list[1],
                      right: list[2],
                      bottom: list[3] + 8,
                    ),
                    icon: widget.icon != null
                        ? Padding(
                            padding: widget.outlineWidth == 0
                                ? const EdgeInsets.fromLTRB(2, 25, 0, 3)
                                : EdgeInsets.fromLTRB(0, list[1], 0, list[3]),
                            child: Icon(
                              widget.icon,
                              color: widget.iconColor ?? Colors.grey,
                              size: widget.iconSize as double? ?? 8,
                            ),
                          )
                        : null,
                    errorText: error,
                  )
                : const InputDecoration.collapsed(hintText: ""),
            controller: widget.controller,
            obscureText: widget.obscureText ?? false,
            obscuringCharacter: widget.obscuringCharacter ?? '*',
            onChanged: _onChanged,
            onSaved:widget.onSaved?? _onSaved,
            // initialValue: widget.initialValue,
            textAlignVertical: TextAlignVertical.center,
            maxLines: widget.maxLines as int? ?? 1,
            maxLength:
                widget.maxLength != null ? widget.maxLength as int : null,
            validator: widget.validatorString ?? _validateInput,
            buildCounter:
                widget.buildCounter == true && widget.maxLength != null
                    ? (BuildContext context,
                            {int? currentLength,
                            int? maxLength,
                            bool? isFocused}) =>
                        currentLength == null
                            ? null
                            : Text('$currentLength/$maxLength')
                    : (BuildContext context,
                            {int? currentLength,
                            int? maxLength,
                            bool? isFocused}) =>
                        null,
            textInputAction: widget.textInputAction ?? TextInputAction.done,
            autocorrect: widget.autoCorrect ?? false,
            // textAlign: widget.textAlign ?? TextAlign.left,

            style: TextStyle(
              fontSize: widget.inputFontSize ?? 18.0,
              fontWeight: widget.inputFontWeight ?? FontWeight.normal,
              color: widget.inputColor ?? Colors.black,
            ),
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.none,
          )
        : Container(
            // margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: widget.outlineWidth != 0
                  ? Border.all(
                      color: widget.borderColor ?? Colors.transparent,
                      width: widget.outlineWidth as double)
                  : Border.all(
                      width: 1,
                      color: widget.borderColor ?? Colors.transparent,
                    ),
              borderRadius: widget.borderRadius != 0
                  ? BorderRadius.all(
                      Radius.circular(widget.borderRadius as double))
                  : BorderRadius.circular(8.0),
              boxShadow: [
                widget.boxShadow ??
                    const BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(-2.0, -2.0),
                      blurRadius: 4.0,
                      spreadRadius:
                          2.0, // negative value creates an "inset" effect
                      blurStyle: BlurStyle.inner,
                    ),
              ],
              color: widget.fillColor ?? Colors.white,
            ),
            child: TextFormField(
              focusNode: _focusNode,
              style: TextStyle(
                color: widget.inputColor ?? Color.fromRGBO(77, 77, 77, 1),
                fontWeight: widget.inputFontWeight ?? FontWeight.w400,
                fontSize: widget.inputFontSize ?? 16,
              ),
              keyboardType: widget.keyboardType ?? TextInputType.text,
              controller: widget.controller,
              obscureText: widget.obscureText ?? false,
              obscuringCharacter: widget.obscuringCharacter ?? '*',
              onChanged: _onChanged,
              onSaved: _onSaved,
              maxLines: widget.maxLines as int? ?? 1,
              maxLength:
                  widget.maxLength != null ? widget.maxLength as int : null,
              validator:
                  widget.validatorString ?? (value) => _validateInput(value),
              buildCounter:
                  widget.buildCounter == true && widget.maxLength != null
                      ? (BuildContext context,
                              {int? currentLength,
                              int? maxLength,
                              bool? isFocused}) =>
                          currentLength == null
                              ? null
                              : Text('$currentLength/$maxLength')
                      : (BuildContext context,
                              {int? currentLength,
                              int? maxLength,
                              bool? isFocused}) =>
                          null,
              textInputAction: widget.textInputAction ?? TextInputAction.done,
              autocorrect: widget.autoCorrect ?? false,
              textAlign: widget.textAlign ?? TextAlign.left,
              textCapitalization:
                  widget.textCapitalization ?? TextCapitalization.none,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: list[0],
                  top: list[1],
                  right: list[2],
                  bottom: list[3],
                ),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: widget.hintText ?? '',
                hintStyle: TextStyle(
                  color: widget.hintColor,
                  fontWeight: widget.hintWeight ?? FontWeight.normal,
                ),
                labelText: widget.labelText ?? '',
                labelStyle: TextStyle(
                  color: widget.labelColor ?? const Color(0xFF999999),
                  fontWeight: widget.labelWeight ?? FontWeight.normal,
                ),
                floatingLabelBehavior:
                    widget.floatingLabelBehavior ?? FloatingLabelBehavior.auto,
                // prefixIconConstraints:
                //     BoxConstraints(minWidth: 0, minHeight: 0),
                prefix: widget.prefixIcon != null
                    ? Icon(
                        widget.prefixIcon,
                      )
                    : null,
                suffix: widget.suffixIcon != null
                    ? Icon(
                        widget.suffixIcon,
                      )
                    : null,
                errorBorder: OutlineInputBorder(
                  borderRadius: widget.borderRadius != 0
                      ? BorderRadius.circular(widget.borderRadius as double)
                      : BorderRadius.circular(8),
                  borderSide: widget.outlineWidth != 0
                      ? BorderSide(
                          width: widget.outlineWidth as double? ?? 1,
                          color: Colors.redAccent,
                        )
                      : BorderSide.none,
                ),
                icon: widget.icon != null
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          widget.icon,
                          color: widget.iconColor ?? Colors.grey,
                          size: widget.iconSize as double? ?? 8,
                        ),
                      )
                    : null,
                errorText: error,
              ),
            ),
          );
  }
}