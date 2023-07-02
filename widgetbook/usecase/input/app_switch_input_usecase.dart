import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/widgets/input/app_switch_input.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';


@WidgetbookUseCase(name: 'Custom', type: AppSwitchInput)
Widget customAppSwitchUseCase(BuildContext context) {
  return AppSwitchInput(
    value: context.knobs.boolean(label: 'hasLabel', initialValue: true),
    useMaterial3:
        context.knobs.boolean(label: 'useMaterial3', initialValue: false),
    inactiveThumbColor: context.knobs.options<Color?>(
      label: 'inactiveThumb color',
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
    activeTrackColor: context.knobs.options<Color?>(
      label: 'activeTrack color',
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
    inactiveTrackColor: context.knobs.options<Color?>(
      label: 'inactiveTrack color',
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
    activeColor: context.knobs.options<Color?>(
      label: 'activeColor color',
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
    overlayColor: context.knobs.options<MaterialStateProperty<Color?>?>(
      label: 'active color',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Pink',
          value: MaterialStateProperty.all<Color?>(Colors.pink),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'White',
          value: MaterialStateProperty.all<Color?>(AppColors.white),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Primary',
          value: MaterialStateProperty.all<Color?>(AppColors.primary),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Secondary',
          value: MaterialStateProperty.all<Color?>(AppColors.secondary),
        ),
      ],
    ),
    selectedIcon: context.knobs.options<IconData?>(
      label: 'selectedIcon',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        Option<IconData>(label: 'check', value: Icons.check),
        Option<IconData>(label: 'selectedAll', value: Icons.select_all),
        Option<IconData>(label: 'autofps_select', value: Icons.autofps_select),
        Option<IconData>(label: 'save', value: Icons.save),
        Option<IconData>(
            label: 'hdr_auto_select_rounded',
            value: Icons.hdr_auto_select_rounded),
      ],
    ),
    unselectedIcon: context.knobs.options<IconData?>(
      label: 'unselectedIcon',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        Option<IconData>(label: 'close', value: Icons.close),
        Option<IconData>(label: 'save', value: Icons.save),
        Option<IconData>(
            label: 'close_fullscreen', value: Icons.close_fullscreen),
        Option<IconData>(label: 'close_rounded', value: Icons.close_rounded),
        Option<IconData>(label: 'close_outlined', value: Icons.close_outlined),
        Option<IconData>(
            label: 'closed_caption_outlined',
            value: Icons.closed_caption_outlined),
      ],
    ),
    spreadRadius: context.knobs.number(label: 'spreadRadius',initialValue: 20),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'm2', type: AppSwitchInput)
Widget m2AppSwitchUseCase(BuildContext context) {
  return AppSwitchInput.m2(
    value: context.knobs.boolean(label: 'hasLabel', initialValue: true),
    inactiveThumbColor: context.knobs.options<Color?>(
      label: 'inactiveThumb color',
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
    activeTrackColor: context.knobs.options<Color?>(
      label: 'activeTrack color',
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
    inactiveTrackColor: context.knobs.options<Color?>(
      label: 'inactiveTrack color',
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
    activeColor: context.knobs.options<Color?>(
      label: 'activeColor color',
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
    overlayColor: context.knobs.options<MaterialStateProperty<Color?>?>(
      label: 'active color',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Pink',
          value: MaterialStateProperty.all<Color?>(Colors.pink),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'White',
          value: MaterialStateProperty.all<Color?>(AppColors.white),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Primary',
          value: MaterialStateProperty.all<Color?>(AppColors.primary),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Secondary',
          value: MaterialStateProperty.all<Color?>(AppColors.secondary),
        ),
      ],
    ),
    spreadRadius: context.knobs.number(label: 'spreadRadius',initialValue: 20),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'Custom', type: AppSwitchInput)
Widget m2IconAppSwitchUseCase(BuildContext context) {
  return AppSwitchInput.m2Icon(
    value: context.knobs.boolean(label: 'hasLabel', initialValue: true),
    inactiveThumbColor: context.knobs.options<Color?>(
      label: 'inactiveThumb color',
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
    activeTrackColor: context.knobs.options<Color?>(
      label: 'activeTrack color',
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
    inactiveTrackColor: context.knobs.options<Color?>(
      label: 'inactiveTrack color',
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
    activeColor: context.knobs.options<Color?>(
      label: 'activeColor color',
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
    overlayColor: context.knobs.options<MaterialStateProperty<Color?>?>(
      label: 'active color',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Pink',
          value: MaterialStateProperty.all<Color?>(Colors.pink),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'White',
          value: MaterialStateProperty.all<Color?>(AppColors.white),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Primary',
          value: MaterialStateProperty.all<Color?>(AppColors.primary),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Secondary',
          value: MaterialStateProperty.all<Color?>(AppColors.secondary),
        ),
      ],
    ),
    selectedIcon: context.knobs.options<IconData?>(
      label: 'selectedIcon',
      options: [
        Option<IconData>(label: 'check', value: Icons.check),
        Option<IconData>(label: 'selectedAll', value: Icons.select_all),
        Option<IconData>(label: 'autofps_select', value: Icons.autofps_select),
        Option<IconData>(label: 'save', value: Icons.save),
        Option<IconData>(
            label: 'hdr_auto_select_rounded',
            value: Icons.hdr_auto_select_rounded),
      ],
    ),
    unselectedIcon: context.knobs.options<IconData?>(
      label: 'unselectedIcon',
      options: [
        Option<IconData>(label: 'close', value: Icons.close),
        Option<IconData>(label: 'save', value: Icons.save),
        Option<IconData>(
            label: 'close_fullscreen', value: Icons.close_fullscreen),
        Option<IconData>(label: 'close_rounded', value: Icons.close_rounded),
        Option<IconData>(label: 'close_outlined', value: Icons.close_outlined),
        Option<IconData>(
            label: 'closed_caption_outlined',
            value: Icons.closed_caption_outlined),
      ],
    ),
    spreadRadius: context.knobs.number(label: 'spreadRadius',initialValue: 20),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'm3', type: AppSwitchInput)
Widget m3AppSwitchUseCase(BuildContext context) {
  return AppSwitchInput.m3(
    value: context.knobs.boolean(label: 'hasLabel', initialValue: true),
    inactiveThumbColor: context.knobs.options<Color?>(
      label: 'inactiveThumb color',
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
    activeTrackColor: context.knobs.options<Color?>(
      label: 'activeTrack color',
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
    inactiveTrackColor: context.knobs.options<Color?>(
      label: 'inactiveTrack color',
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
    activeColor: context.knobs.options<Color?>(
      label: 'activeColor color',
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
    overlayColor: context.knobs.options<MaterialStateProperty<Color?>?>(
      label: 'active color',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Pink',
          value: MaterialStateProperty.all<Color?>(Colors.pink),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'White',
          value: MaterialStateProperty.all<Color?>(AppColors.white),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Primary',
          value: MaterialStateProperty.all<Color?>(AppColors.primary),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Secondary',
          value: MaterialStateProperty.all<Color?>(AppColors.secondary),
        ),
      ],
    ),
    spreadRadius: context.knobs.number(label: 'spreadRadius',initialValue: 20),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'm3Icon', type: AppSwitchInput)
Widget m3IconAppSwitchUseCase(BuildContext context) {
  return AppSwitchInput.m3Icon(
    value: context.knobs.boolean(label: 'hasLabel', initialValue: true),
    inactiveThumbColor: context.knobs.options<Color?>(
      label: 'inactiveThumb color',
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
    activeTrackColor: context.knobs.options<Color?>(
      label: 'activeTrack color',
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
    inactiveTrackColor: context.knobs.options<Color?>(
      label: 'inactiveTrack color',
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
    activeColor: context.knobs.options<Color?>(
      label: 'activeColor color',
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
    overlayColor: context.knobs.options<MaterialStateProperty<Color?>?>(
      label: 'active color',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Pink',
          value: MaterialStateProperty.all<Color?>(Colors.pink),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'White',
          value: MaterialStateProperty.all<Color?>(AppColors.white),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Primary',
          value: MaterialStateProperty.all<Color?>(AppColors.primary),
        ),
        Option<MaterialStateProperty<Color?>>(
          label: 'Secondary',
          value: MaterialStateProperty.all<Color?>(AppColors.secondary),
        ),
      ],
    ),
    selectedIcon: context.knobs.options<IconData?>(
      label: 'selectedIcon',
      options: [
        Option<IconData>(label: 'check', value: Icons.check),
        Option<IconData>(label: 'selectedAll', value: Icons.select_all),
        Option<IconData>(label: 'autofps_select', value: Icons.autofps_select),
        Option<IconData>(label: 'save', value: Icons.save),
        Option<IconData>(
            label: 'hdr_auto_select_rounded',
            value: Icons.hdr_auto_select_rounded),
      ],
    ),
    unselectedIcon: context.knobs.options<IconData?>(
      label: 'unselectedIcon',
      options: [
        Option<IconData>(label: 'close', value: Icons.close),
        Option<IconData>(label: 'save', value: Icons.save),
        Option<IconData>(
            label: 'close_fullscreen', value: Icons.close_fullscreen),
        Option<IconData>(label: 'close_rounded', value: Icons.close_rounded),
        Option<IconData>(label: 'close_outlined', value: Icons.close_outlined),
        Option<IconData>(
            label: 'closed_caption_outlined',
            value: Icons.closed_caption_outlined),
      ],
    ),
    spreadRadius: context.knobs.number(label: 'spreadRadius',initialValue: 20),
    onChanged: (value) {
      print(value);
    },
  );
}