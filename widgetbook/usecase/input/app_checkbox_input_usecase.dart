import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/styles/app_sizes.dart';
import 'package:n_learn/widgets/input/app_checkBox_input.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Custom', type: AppCheckboxInput)
Widget customAppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput(
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    isBoxShadow:
        context.knobs.boolean(label: 'isBoxShadow', initialValue: false),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor',
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
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
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
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
      label: 'tileColor',
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 0),
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option<Widget>(
        label: 'arrow_forward_ios',
        value: Icon(Icons.arrow_forward_ios),
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: const Text("Say Hi"),
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
    subtitle: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option<Widget>(
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
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
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
    checkBoxborderRadius:
        context.knobs.number(label: 'checkboxBorderRadius', initialValue: 0),
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 0),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 0),
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
    checkBoxValue: checkBoxList,
  );
}

@WidgetbookUseCase(name: 'boxShadow', type: AppCheckboxInput)
Widget boxShadowAppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput.boxShadow(
    boxShadow: context.knobs.options<BoxShadow?>(label: 'BoxShadow', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<BoxShadow>(
          label: 'scale shadow',
          value: BoxShadow(
            color: Colors.grey.shade800,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 15),
          ).scale(4)),
      Option<BoxShadow>(
        label: 'shadow down',
        value: BoxShadow(
            color: Colors.grey.shade900,
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(0, 5)),
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
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor',
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
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
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
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
      label: 'tileColor',
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 8),
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option<Widget>(
        label: 'arrow_forward_ios',
        value: Icon(Icons.arrow_forward_ios),
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: const Text("Say Hi"),
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
    subtitle: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option<Widget>(
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
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
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
    checkBoxborderRadius:
        context.knobs.number(label: 'checkboxBorderRadius', initialValue: 0),
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 0),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 0),
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
    checkBoxValue: checkBoxList,
  );
}

@WidgetbookUseCase(name: 'Leading', type: AppCheckboxInput)
Widget leadingAppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput.leading(
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor',
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
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
      options: [
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
      label: 'tileColor',
      options: [
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option(
          label: 'None',
          value: null,
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 0),
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option<Widget>(
        label: 'arrow_forward_ios',
        value: Icon(Icons.arrow_forward_ios),
      ),
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: const Text("Say Hi"),
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
    subtitle: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option<Widget>(
        label: 'text',
        value: Text("It's subtitle"),
      ),
      const Option(
        label: 'None',
        value: null,
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
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
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
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    checkBoxborderRadius:
        context.knobs.number(label: 'checkboxBorderRadius', initialValue: 2),
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 1),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 0),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
      options: [
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    selectedTitleColor: context.knobs.options<Color?>(
      label: 'selectedTitleColor',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
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
    checkBoxValue: checkBoxList,
  );
}

@WidgetbookUseCase(name: 'LeadingCircular', type: AppCheckboxInput)
Widget leadingCircularAppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'secondaryWidget': OutlinedButton(
        child: const Text("Say Hi"),
        onPressed: () {
          print("Say Hello");
        },
      ),
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'secondaryWidget': Icon(Icons.arrow_forward_ios),
      'subtitle': Text("It's subtitle"),
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'secondaryWidget': null,
      'subtitle': Text("It's subtitle"),
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'secondaryWidget': CircularProgressIndicator(),
      'subtitle': null,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput.leadingCircular(
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
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
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
      options: [
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
    tileColor: context.knobs.options<Color?>(
      label: 'tileColor',
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 4),
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: const Text("Say Hi"),
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
    subtitle: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option<Widget>(
        label: 'text',
        value: Text("It's subtitle"),
      ),
      const Option(
        label: 'None',
        value: null,
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
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
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
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 2),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 1),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
      options: [
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    selectedTitleColor: context.knobs.options<Color?>(
      label: 'selectedTitleColor',
      options: [
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option(
          label: 'None',
          value: null,
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
    unselectedTitleColor: context.knobs.options<Color?>(
      label: 'unselectedTitleColor',
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
    checkBoxValue: checkBoxList,
  );
}

@WidgetbookUseCase(name: 'trailing', type: AppCheckboxInput)
Widget trailingAppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'secondaryWidget': null,
      'subtitle': null,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput.trailing(
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
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
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
      options: [
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
      label: 'tileColor',
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 8),
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option<Widget>(
        label: 'arrow_forward_ios',
        value: Icon(Icons.arrow_forward_ios),
      ),
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: const Text("Say Hi"),
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
    subtitle: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option<Widget>(
        label: 'text',
        value: Text("It's subtitle"),
      ),
      const Option(
        label: 'None',
        value: null,
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
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
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
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    checkBoxborderRadius:
        context.knobs.number(label: 'checkboxBorderRadius', initialValue: 2),
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 1),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 2),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
      options: [
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    selectedTitleColor: context.knobs.options<Color?>(
      label: 'selectedTitleColor',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
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
    unselectedBorderColor: context.knobs.options<Color?>(
      label: 'unselectedBorderColor',
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
    checkBoxValue: checkBoxList,
  );
}

@WidgetbookUseCase(name: 'TrailingCircular', type: AppCheckboxInput)
Widget trailingCircularAppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'secondaryWidget': OutlinedButton(
        child: const Text("Say Hi"),
        onPressed: () {
          print("Say Hello");
        },
      ),
      'subtitle': null,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'secondaryWidget': Icon(Icons.arrow_forward_ios),
      'subtitle': Text("It's subtitle"),
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'secondaryWidget': null,
      'subtitle': Text("It's subtitle"),
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'secondaryWidget': CircularProgressIndicator(),
      'subtitle': null,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput.trailingCircular(
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    selectedTileColor: context.knobs.options<Color?>(
      label: 'selectedTileColor',
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
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
    tileColor: context.knobs.options<Color?>(
      label: 'tileColor',
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 10),
    secondaryWidget:
        context.knobs.options<Widget?>(label: 'secondaryWidget', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      Option<Widget>(
        label: 'outlineButton',
        value: OutlinedButton(
          child: const Text("Say Hi"),
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
    subtitle: context.knobs.options<Widget?>(label: 'subtitle', options: [
      const Option<Widget>(
        label: 'text',
        value: Text("It's subtitle"),
      ),
      const Option(
        label: 'None',
        value: null,
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
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
      options: [
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option(
          label: 'None',
          value: null,
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
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 3),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 1),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
      options: [
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    selectedTitleColor: context.knobs.options<Color?>(
      label: 'selectedTitleColor',
      options: [
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.white,
        ),
        const Option(
          label: 'None',
          value: null,
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
    unselectedBorderColor: context.knobs.options<Color?>(
      label: 'unselectedBorderColor',
      options: [
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option(
          label: 'None',
          value: null,
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
    unselectedTitleColor: context.knobs.options<Color?>(
      label: 'unselectedTitleColor',
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
    checkBoxValue: checkBoxList,
  );
}

@WidgetbookUseCase(name: 'nlearn4_1', type: AppCheckboxInput)
Widget nlearn4_1AppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput.nlearn4_1(
    isVerify: context.knobs.boolean(label: 'verify', initialValue: false),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
      options: [
        const Option(
          label: 'default',
          value: Color.fromRGBO(0, 131, 176, 1),
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
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
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
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 8),
    onChanged: (value) {
      print("");
    },
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
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
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 0),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 0),
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
    checkBoxValue: checkBoxList,
  );
}

@WidgetbookUseCase(name: 'nlearn4_2', type: AppCheckboxInput)
Widget nlearn4_2AppCheckboxUseCase(BuildContext context) {
  List<Map<String, dynamic>> checkBoxList = [
    {
      'label': 'Chemistry',
      'value': false,
      'isAnswer': false,
    },
    {
      'label': 'Math',
      'value': false,
      'isAnswer': true,
    },
    {
      'label': 'Eng',
      'value': false,
      'isAnswer': false,
    },
    {
      'label': 'Bio',
      'value': false,
      'isAnswer': true,
    },
  ];

  return AppCheckboxInput.nlearn4_2(
    isDense: context.knobs.boolean(label: 'isDense', initialValue: false),
    selectedCheckboxColor: context.knobs.options<Color?>(
      label: 'selectedCheckboxColor',
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
    unselectedCheckboxColor: context.knobs.options<Color?>(
      label: 'unselectedCheckboxColor',
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
    borderRadius: context.knobs.number(label: 'border', initialValue: 0),
    onChanged: (value) {
      print(value);
    },
    checkColor: context.knobs.options<Color?>(
      label: 'check color',
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
    checkBoxborderWidth:
        context.knobs.number(label: 'checkBoxborderWidth', initialValue: 1.6),
    outlineBorder:
        context.knobs.number(label: 'outlineBorder', initialValue: 0),
    selectedBorderColor: context.knobs.options<Color?>(
      label: 'selectedBorderColor',
      options: [
        const Option(
          label: 'default',
          value: Color.fromRGBO(32, 101, 209, 1),
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
        const Option<Color>(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
      ],
    ),
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
    checkBoxValue: checkBoxList,
  );
}