import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/styles/app_sizes.dart';
import 'package:n_learn/widgets/input/app_radio_input.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';


@WidgetbookUseCase(name: 'Custom', type: AppRadioInput)
Widget customAppRadioUseCase(BuildContext context) {
  List<Map<String, dynamic>> radioBox = [
    {
      'label': 'Chemistry',
      'value': 1,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': 2,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': 3,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': 4,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
  ];

  return AppRadioInput(
    value: 'Chemistry',
    // isVerify: context.knobs.boolean(label: 'verify', initialValue: false),
    isBoxShadow:
        context.knobs.boolean(label: 'isBoxShadow', initialValue: false),
    isSelected: context.knobs.boolean(label: 'isSelected', initialValue: false),
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor color',
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
    tileColor: context.knobs.options<Color?>(
      label: 'tileColor color',
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
    borderRadius: context.knobs.number(label: 'borderRadius', initialValue: 0),
    outlineWidth: context.knobs.number(label: 'outlineBorder', initialValue: 0),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
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
    unselectedBorderColor: context.knobs.options<Color?>(
      label: 'unselectedBorderColor',
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
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: Text("Say Hi"),
          onPressed: () {
            print("Say Hello");
          },
        ),
      ),
      const Option<Widget>(
        label: 'check',
        value: Icon(Icons.check),
      ),
    ]),
    subTile: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'text',
        value: Text("It's subtitle"),
      ),
      Option<Widget>(
        label: 'container',
        value: Container(
          color: Colors.teal,
          height: 2,
        ),
      ),
      const Option<Widget>(
        label: 'check',
        value: Icon(Icons.check),
      ),
    ]),
    onChanged: (value) {
      print(value);
    },
    control: context.knobs
        .options<ListTileControlAffinity>(label: 'controlAffinity', options: [
      const Option(
        label: 'platform',
        value: ListTileControlAffinity.platform,
      ),
      const Option(
        label: 'leading',
        value: ListTileControlAffinity.leading,
      ),
      const Option(
        label: 'trailing',
        value: ListTileControlAffinity.trailing,
      ),
    ]),
    selectedTitleColor: context.knobs.options<Color?>(
      label: 'selectedTitleColor',
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
    titleFontSize: context.knobs.options<double?>(
      label: 'titleFontSize',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    titleFontWeight: context.knobs.options<FontWeight?>(
      label: 'titleFontWeight',
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
    unselectedTitleColor: context.knobs.options<Color?>(
      label: 'unselectedTitleColor',
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
    groupValue: radioBox,
  );
}

@WidgetbookUseCase(name: 'Custom', type: AppRadioInput)
Widget nlearn4_1AppRadioUseCase(BuildContext context) {
  List<Map<String, dynamic>> radioBox = [
    {
      'label': 'Chemistry',
      'value': 1,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': 2,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': 3,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': 4,
      'isAnswer': false,
    },
  ];

  return AppRadioInput.nlearn4_1(
    value: 'Chemistry',
    isVerify: context.knobs.boolean(label: 'verify', initialValue: false),
    borderRadius: context.knobs.number(label: 'borderRadius', initialValue: 0),
    outlineWidth: context.knobs.number(label: 'outlineBorder', initialValue: 0),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
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
    unselectedBorderColor: context.knobs.options<Color?>(
      label: 'unselectedBorderColor',
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
    onChanged: (value) {
      print(value);
    },
    selectedTitleColor: context.knobs.options<Color?>(
      label: 'selectedTitleColor',
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
    titleFontSize: context.knobs.options<double?>(
      label: 'titleFontSize',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    titleFontWeight: context.knobs.options<FontWeight?>(
      label: 'titleFontWeight',
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
    unselectedTitleColor: context.knobs.options<Color?>(
      label: 'unselectedTitleColor',
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
    iconBackgroundColor: context.knobs.options<Color?>(
      label: 'iconBackgroundColor',
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
    iconBorderRadius: context.knobs
        .slider(label: 'iconBorderRadius', initialValue: 50, min: 0, max: 50),
    iconSize: context.knobs.options<double?>(
      label: 'iconSize',
      options: [
        const Option(
          label: 'None',
          value: 0,
        ),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    radioBoxWidth:
        context.knobs.number(label: 'radioBoxWidth', initialValue: 0),
    radioBoxHeight:
        context.knobs.number(label: ' radioBoxHeight', initialValue: 0),
    radioBoxBackgroundColor: context.knobs.options<Color?>(
      label: 'radioBoxBackgroundColor',
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
    radioBoxBorderRadius: context.knobs.slider(
        label: ' radioBoxBorderRadius', initialValue: 0, min: 0, max: 50),
    boxShadow: context.knobs.options<BoxShadow?>(label: 'BoxShadow', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<BoxShadow>(
          label: 'scale shadow',
          value: BoxShadow(
            color: Colors.grey.shade900,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ).scale(4)),
      Option<BoxShadow>(
        label: 'shadow down',
        value: BoxShadow(
            color: Colors.grey.shade900,
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(5, 0)),
      ),
      Option<BoxShadow>(
          label: 'hide the top shadow',
          value: BoxShadow(
            color: Colors.grey.shade600,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )),
    ]),
    groupValue: radioBox,
  );
}

@WidgetbookUseCase(name: 'boxShadow', type: AppRadioInput)
Widget boxShadowAppRadioUseCase(BuildContext context) {
  List<Map<String, dynamic>> radioBox = [
    {
      'label': 'Chemistry',
      'value': 1,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': 2,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': 3,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': 4,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
  ];

  return AppRadioInput.boxShadow(
    boxShadow: context.knobs.options<BoxShadow?>(label: 'BoxShadow', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<BoxShadow>(
          label: 'scale shadow',
          value: BoxShadow(
            color: Colors.grey.shade900,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ).scale(4)),
      Option<BoxShadow>(
        label: 'shadow down',
        value: BoxShadow(
            color: Colors.grey.shade900,
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(5, 0)),
      ),
      Option<BoxShadow>(
          label: 'hide the top shadow',
          value: BoxShadow(
            color: Colors.grey.shade600,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )),
    ]),
    value: 'Chemistry',
    // isVerify: context.knobs.boolean(label: 'verify', initialValue: false),
    isSelected: context.knobs.boolean(label: 'isSelected', initialValue: true),
    isDense: context.knobs.boolean(label: 'isDense', initialValue: true),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor color',
      options: [
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
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
      ],
    ),
    activeColor: context.knobs.options<Color?>(
      label: 'activeColor color',
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
        const Option(
          label: 'None',
          value: null,
        ),
      ],
    ),
    tileColor: context.knobs.options<Color?>(
      label: 'tileColor color',
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
    borderRadius: context.knobs.number(label: 'borderRadius', initialValue: 8),
    outlineWidth: context.knobs.number(label: 'outlineBorder', initialValue: 1),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
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
    unselectedBorderColor: context.knobs.options<Color?>(
      label: 'unselectedBorderColor',
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
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: Text("Say Hi"),
          onPressed: () {
            print("Say Hello");
          },
        ),
      ),
      const Option<Widget>(
        label: 'check',
        value: Icon(Icons.check),
      ),
    ]),
    subTile: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'text',
        value: Text("It's subtitle"),
      ),
      Option<Widget>(
        label: 'container',
        value: Container(
          color: Colors.teal,
          height: 2,
        ),
      ),
      const Option<Widget>(
        label: 'check',
        value: Icon(Icons.check),
      ),
    ]),
    onChanged: (value) {
      print(value);
    },
    control: context.knobs
        .options<ListTileControlAffinity>(label: 'controlAffinity', options: [
      const Option(
        label: 'platform',
        value: ListTileControlAffinity.platform,
      ),
      const Option(
        label: 'leading',
        value: ListTileControlAffinity.leading,
      ),
      const Option(
        label: 'trailing',
        value: ListTileControlAffinity.trailing,
      ),
    ]),
    selectedTitleColor: context.knobs.options<Color?>(
      label: 'selectedTitleColor',
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
    titleFontSize: context.knobs.options<double?>(
      label: 'titleFontSize',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<double>(label: 'Small', value: AppSize.sm),
        const Option<double>(label: 'Medium', value: AppSize.md),
        const Option<double>(label: 'Large', value: AppSize.lg),
      ],
    ),
    titleFontWeight: context.knobs.options<FontWeight?>(
      label: 'titleFontWeight',
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
    unselectedTitleColor: context.knobs.options<Color?>(
      label: 'unselectedTitleColor',
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
    groupValue: radioBox,
  );
}