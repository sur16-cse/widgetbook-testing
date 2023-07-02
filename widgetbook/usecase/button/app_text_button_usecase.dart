import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/styles/app_sizes.dart';
import 'package:n_learn/widgets/button/app_text_button.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';


@WidgetbookUseCase(name: 'Custom', type: AppTextButton)
Widget customAppTextButtonUseCase(BuildContext context) {
  return AppTextButton(
    text: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),

    // icon: context.knobs.boolean(label: 'Has Icon', initialValue: false)
    //     ? context.knobs.options(label: 'Icon', options: [
    //   const Option(
    //     label: 'plus',
    //     value: Icons.plus_one,
    //   ),
    //   const Option(
    //     label: 'add_feather_fill',
    //     value: Icons.add,
    //   )
    // ])
    //     : null,
    onPressed: () {},

    buttonColor: context.knobs.options<Color?>(
      label: 'Background Color',
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
    textColor: context.knobs.options<Color?>(
      label: 'Text Color',
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
    hoverColor: context.knobs.options<Color?>(
      label: 'hoverColor',
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
    fontWeight: context.knobs.options<FontWeight?>(
      label: 'FontWeight',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<FontWeight>(
          label: 'Normal',
          value: FontWeight.normal,
        ),
        const Option<FontWeight>(
          label: 'Bold',
          value: FontWeight.bold,
        ),
      ],
    ),
    borderWidth: context.knobs.number(label: 'borderWidth', initialValue: 0),
    borderRadius: context.knobs
        .slider(label: 'Border Radius', initialValue: 0, min: 0, max: 50),
    borderColor: context.knobs.options<Color?>(
      label: 'Border Color',
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

    padding: context.knobs.number(label: 'padding', initialValue: 0),

    textDecoration: context.knobs.options<TextDecoration?>(
      label: 'textDecoration',
      options: [
        const Option<TextDecoration>(
          label: 'None',
          value: TextDecoration.none,
        ),
        const Option<TextDecoration>(
          label: 'underLine',
          value: TextDecoration.underline,
        ),
        const Option<TextDecoration>(
          label: 'overLine',
          value: TextDecoration.overline,
        ),
        const Option<TextDecoration>(
          label: 'lineThrough',
          value: TextDecoration.lineThrough,
        ),
      ],
    ),
    fontSize: context.knobs.options<double>(
      label: 'fontSize',
      options: [
        const Option<double>(label: 'Extra Small', value: AppSize.xs),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],

    ),
  );
}

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Primary Button', type: AppTextButton)
Widget primaryAppTextButtonUseCase(BuildContext context) {
  return AppTextButton.primary(
    text: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),
    onPressed: () {},
    fontSize: context.knobs.options<double>(
      label: 'fontSize',
      options: [
        const Option<double>(label: 'Extra Small', value: AppSize.xs),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    fontWeight: context.knobs.options<FontWeight?>(
      label: 'FontWeight',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<FontWeight>(
          label: 'Normal',
          value: FontWeight.normal,
        ),
        const Option<FontWeight>(
          label: 'Bold',
          value: FontWeight.bold,
        ),
      ],
    ),
    textColor: context.knobs.options<Color?>(
      label: 'Text Color',
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
  );
}

/// Use case for a Secondary Button style
@WidgetbookUseCase(name: 'Secondary Button', type: AppTextButton)
Widget secondaryAppTextButtonUseCase(BuildContext context) {
  return AppTextButton.secondary(
    text: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),
    onPressed: () {},
    textColor: context.knobs.options<Color?>(
      label: 'Text Color',
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
    fontSize: context.knobs.options<double>(
      label: 'fontSize',
      options: [
        const Option<double>(label: 'Extra Small', value: AppSize.xs),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    fontWeight: context.knobs.options<FontWeight?>(
      label: 'FontWeight',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<FontWeight>(
          label: 'Normal',
          value: FontWeight.normal,
        ),
        const Option<FontWeight>(
          label: 'Bold',
          value: FontWeight.bold,
        ),
      ],
    ),
    buttonColor: context.knobs.options<Color>(
      label: 'ButtonColor',
      options: [
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
  );
}

/// Use case for a Primary Outline Button style
@WidgetbookUseCase(name: 'Secondary Button', type: AppTextButton)
Widget primaryAppTextOutlineButtonUseCase(BuildContext context) {
  return AppTextButton.primaryOutline(
    text: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),
    fontSize: context.knobs.options<double>(
      label: 'fontSize',
      options: [
        const Option<double>(label: 'Extra Small', value: AppSize.xs),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    fontWeight: context.knobs.options<FontWeight?>(
      label: 'FontWeight',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<FontWeight>(
          label: 'Normal',
          value: FontWeight.normal,
        ),
        const Option<FontWeight>(
          label: 'Bold',
          value: FontWeight.bold,
        ),
      ],
    ),
    textColor: context.knobs.options<Color?>(
      label: 'Text Color',
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
    onPressed: () {},
    borderWidth: context.knobs.number(label: 'borderWidth', initialValue: 0),
    borderRadius: context.knobs
        .slider(label: 'Border Radius', initialValue: 0, min: 0, max: 50),
    borderColor: context.knobs.options<Color>(
      label: 'Border Color',
      options: [
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
  );
}

/// Use case for a Secondary Outline Button style
@WidgetbookUseCase(name: 'Secondary Outline Button', type: AppTextButton)
Widget secondaryOutlineAppTextButtonUseCase(BuildContext context) {
  return AppTextButton.secondaryOutline(
    text: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),
    onPressed: () {},
    textColor: context.knobs.options<Color?>(
      label: 'Text Color',
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
    fontSize: context.knobs.options<double>(
      label: 'fontSize',
      options: [
        const Option<double>(label: 'Extra Small', value: AppSize.xs),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    fontWeight: context.knobs.options<FontWeight?>(
      label: 'FontWeight',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<FontWeight>(
          label: 'Normal',
          value: FontWeight.normal,
        ),
        const Option<FontWeight>(
          label: 'Bold',
          value: FontWeight.bold,
        ),
      ],
    ),
    buttonColor: context.knobs.options<Color>(
      label: 'ButtonColor',
      options: [
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
    borderWidth: context.knobs.number(label: 'borderWidth', initialValue: 1),
    borderRadius: context.knobs
        .slider(label: 'Border Radius', initialValue: 0, min: 0, max: 50),
    borderColor: context.knobs.options<Color>(
      label: 'Border Color',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
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
  );
}