import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/widgets/input/app_datePicker_input.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Custom', type: AppDatePicker)
Widget customAppDatePickerUseCase(BuildContext context) {
  TextEditingController _textEditingController = TextEditingController();
  return AppDatePicker(
    contextDatePicker: context,
    labelText: context.knobs.nullableText(
      label: 'labelText',
    ),
    controller: _textEditingController,
    onSaved: (value) {
      print(value);
    },
    cancelText: context.knobs.nullableText(
      label: 'cancelText',
    ),
    confirmText: context.knobs.nullableText(
      label: 'confirmText',
    ),
    fieldLabelText: context.knobs.nullableText(
      label: 'fieldLabelText',
    ),
    fieldHintText: context.knobs.nullableText(
      label: 'fieldHintText',
    ),
    helperText:context.knobs.nullableText(
      label: 'helperText',
    ),
    buttonPadding: context.knobs.number(label: 'buttonPadding'),
    inputColor: context.knobs.options<Color?>(
      label: 'inputColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
buttonBackground: context.knobs.options<Color?>(
  label: 'buttonBackground',
  options: [
    const Option(
      label: 'None',
      value: null,
    ),
    const Option<Color>(
      label: 'Pink',
      value: AppColors.pink,
    ),
    const Option<Color>(
      label: 'White',
      value: AppColors.white,
    ),
    const Option<Color>(
      label: 'Primary',
      value: AppColors.primary,
    ),
    const Option<Color>(
      label: 'Secondary',
      value: AppColors.secondary,
    ),
  ],
),
    buttonBorderColor: context.knobs.options<Color?>(
      label: 'buttonBorderColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    buttonBorderRadius:  context.knobs.number(label: '  buttonBorderRadius', initialValue: 0),
    buttonElevation: context.knobs.number(label: 'buttonElevation', initialValue: 0),
    buttonForeground: context.knobs.options<Color?>(
      label: 'buttonForeground',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    buttonWidth: context.knobs.number(label: 'buttonWidth', initialValue: 0),
    cursorColor: context.knobs.options<Color?>(
      label: 'cursorColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    dialogBackgroundColor: context.knobs.options<Color?>(
      label: 'dialogBackgroundColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    inputActiveIndicatorColor: context.knobs.options<Color?>(
      label: 'inputActiveIndicatorColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    inputFillColor: context.knobs.options<Color?>(
      label: 'inputFillColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    inputRadius:context.knobs.number(label: 'inputRadius', initialValue: 0),
    inputWidth: context.knobs.number(label: 'inputWidth', initialValue: 0),
    // inputFloatingLabelColor: ,
  );
}