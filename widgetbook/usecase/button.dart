import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/styles/app_icons.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../widgets/Buttons/appElevatedButton.dart';


@WidgetbookUseCase(name: 'Custom', type: AppElevatedButton)
Widget customAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: false)
        ? context.knobs.options(label: 'Icon', options: [
            const Option(
              label: 'plus',
              value: Icons.search,
            ),
            const Option(
              label: 'add_feather_fill',
              value: Icons.apple,
            )
          ])
        : null,
    onPressed: () {},
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
    backgroundColor: context.knobs.options<Color?>(
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
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
  );
}

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Primary Button', type: AppElevatedButton)
Widget primaryAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.primary(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: false)
        ? context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ])
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Secondary Button style
@WidgetbookUseCase(name: 'Secondary Button', type: AppElevatedButton)
Widget secondaryAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.secondary(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ])
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Primary Outline Button style
@WidgetbookUseCase(name: 'Primary Outline Button', type: AppElevatedButton)
Widget primaryOutlineAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.primaryOutline(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ])
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Secondary Outline Button style
@WidgetbookUseCase(name: 'Secondary Outline Button', type: AppElevatedButton)
Widget secondaryOutlineAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.secondaryOutline(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ])
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? borderSize;
  final double? elevation;

  const ButtonWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      this.buttonColor,
      this.textColor,
      this.borderRadius,
      this.borderColor,
      this.borderSize,
      this.height,
      this.width,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: buttonColor ?? Colors.white,
          backgroundColor: textColor ?? Colors.orange,
          padding: EdgeInsets.symmetric(
              horizontal: width ?? 16.0, vertical: height ?? 8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          ),
          side: BorderSide(
              color: borderColor ?? Colors.orange, width: borderSize ?? 0),
          elevation: elevation ?? 0),
      child: Text(
        text,
      ),
    );
  }
}