import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/styles/app_sizes.dart';
import 'package:n_learn/widgets/button/app_dropdown_button.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, KnobsNotifier, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';


@WidgetbookUseCase(name: 'Custom', type: AppDropDownButton)
Widget customAppDropdownButtonUseCase(BuildContext context) {
  final ValueNotifier<bool> hasGradient = ValueNotifier(
    context.knobs.boolean(
      label: 'Has Gradient',
      initialValue: false,
    ),
  );
  // print(hasGradient.value);

  return ValueListenableBuilder<bool>(
      valueListenable: hasGradient,
      builder: (BuildContext context, bool isGradient, Widget? child) {
        return AppDropDownButton(
          isGradient: isGradient,
          gradient: isGradient == false
              ? null
              : context.knobs
                  .text(label: 'gradientColor', description: 'gradient'),
          isExpanded:
              context.knobs.boolean(label: 'isExpanded', initialValue: false),
          icon: context.knobs.options(label: 'Icon', options: [
            const Option(
              label: 'None',
              value: null,
            ),
            const Option(
              label: 'plus',
              value: Icons.plus_one,
            ),
            const Option(
              label: 'add_feather_fill',
              value: Icons.add,
            )
          ]),

          iconColor: context.knobs.options<Color?>(
            label: 'Icon Color',
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
          underlineColor: context.knobs.options<Color?>(
            label: 'Underline Color',
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
          dropDownColor: context.knobs.options<Color?>(
            label: 'Dropdown Color',
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
          dropDownButtonColor: context.knobs.options<Color?>(
            label: 'dropDownButton Color',
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
          boxShadow: context.knobs.options<Color?>(
            label: 'BoxShadow Color',
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
          // hintText: context.knobs.nullableText(
          //   label: 'hint',
          //   initialValue: 'I am hint',
          // ),

          borderRadius: context.knobs
              .slider(label: 'Border Radius', initialValue: 0, min: 0, max: 50),

          list: ["Take it", "Take Away"],
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
          underlineHeight:
              context.knobs.number(label: 'underlineHeight', initialValue: 0),
          borderWidth:
              context.knobs.number(label: 'borderWidth', initialValue: 0),
          elevation: context.knobs.number(label: 'elevation', initialValue: 0),
          padding: context.knobs.number(label: 'padding', initialValue: 0),
          height: context.knobs.number(label: 'elevation', initialValue: 0),
          width: context.knobs.number(label: 'elevation', initialValue: 0),
          menuHeight:
              context.knobs.number(label: 'menuHeight', initialValue: 0),
          fontSize: context.knobs.options(label: 'fontSize', options: [
            const Option<double>(label: 'Small', value: AppSize.sm),
            const Option<double>(label: 'Medium', value: AppSize.md),
            const Option<double>(label: 'Large', value: AppSize.lg),
          ]),
        );
      });
}

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Primary Button', type: AppDropDownButton)
Widget underlineDropdownButtonUseCase(BuildContext context) {
  return AppDropDownButton.underline(
    isExpanded: context.knobs.boolean(label: 'isExpanded', initialValue: false),
    icon: context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ]),
    iconColor: context.knobs.options<Color?>(
      label: 'Icon Color',
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
    underlineHeight:
        context.knobs.number(label: 'underlineHeight', initialValue: 1),
    underlineColor: context.knobs.options<Color>(
      label: 'Underline Color',
      options: [
        const Option<Color>(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option<Color>(
          label: 'White',
          value: AppColors.black,
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
    dropDownColor: context.knobs.options<Color?>(
      label: 'Dropdown Color',
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
    dropDownButtonColor: context.knobs.options<Color?>(
      label: 'dropDownButton Color',
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
    list: ["Take it", "Take Away"],
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
    elevation: context.knobs.number(label: 'elevation', initialValue: 0),
    padding: context.knobs.number(label: 'padding', initialValue: 0),
    height: context.knobs.number(label: 'elevation', initialValue: 0),
    width: context.knobs.number(label: 'elevation', initialValue: 0),
    menuHeight: context.knobs.number(label: 'menuHeight', initialValue: 0),
    fontSize: context.knobs.options(label: 'fontSize', options: [
      const Option<double>(label: 'Small', value: AppSize.sm),
      const Option<double>(label: 'Medium', value: AppSize.md),
      const Option<double>(label: 'Large', value: AppSize.lg),
    ]),
  );
}

/// Use case for a Secondary Button style
@WidgetbookUseCase(name: 'Secondary Button', type: AppDropDownButton)
Widget circularAppAppDropDownButtonUseCase(BuildContext context) {
  return AppDropDownButton.circular(
    isExpanded: context.knobs.boolean(label: 'isExpanded', initialValue: false),
    icon: context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ]),

    iconColor: context.knobs.options<Color?>(
      label: 'Icon Color',
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
    borderColor: context.knobs.options<Color>(
      label: 'Border Color',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.black,
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
    borderRadius: context.knobs
        .slider(label: 'Border Radius', initialValue: 10, min: 0, max: 50),
    borderWidth: context.knobs.number(label: 'borderWidth', initialValue: 1),
    dropDownColor: context.knobs.options<Color?>(
      label: 'Dropdown Color',
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
    dropDownButtonColor: context.knobs.options<Color?>(
      label: 'dropDownButton Color',
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

    // hintText: context.knobs.nullableText(
    //   label: 'hint',
    //   initialValue: 'I am hint',
    // ),

    list: ["Take it", "Take Away"],
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

    elevation: context.knobs.number(label: 'elevation', initialValue: 0),
    padding: context.knobs.number(label: 'padding', initialValue: 0),
    height: context.knobs.number(label: 'elevation', initialValue: 0),
    width: context.knobs.number(label: 'elevation', initialValue: 0),
    menuHeight: context.knobs.number(label: 'menuHeight', initialValue: 0),
    fontSize: context.knobs.options(label: 'fontSize', options: [
      const Option<double>(label: 'Small', value: AppSize.sm),
      const Option<double>(label: 'Medium', value: AppSize.md),
      const Option<double>(label: 'Large', value: AppSize.lg),
    ]),
  );
}

@WidgetbookUseCase(name: 'Secondary Button', type: AppDropDownButton)
Widget filledAppAppDropDownButtonUseCase(BuildContext context) {
  return AppDropDownButton.filled(
    isExpanded: context.knobs.boolean(label: 'isExpanded', initialValue: false),
    icon: context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ]),

    iconColor: context.knobs.options<Color?>(
      label: 'Icon Color',
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
    borderColor: context.knobs.options<Color>(
      label: 'Border Color',
      options: [
        const Option<Color>(
          label: 'White',
          value: AppColors.black,
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
    borderRadius: context.knobs
        .slider(label: 'Border Radius', initialValue: 10, min: 0, max: 50),
    borderWidth: context.knobs.number(label: 'borderWidth', initialValue: 1),
    dropDownColor: context.knobs.options<Color?>(
      label: 'Dropdown Color',
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
    dropDownButtonColor: context.knobs.options<Color?>(
      label: 'dropDownButton Color',
      options: [
        const Option(
          label: 'None',
          value: null,
        ),
        const Option<Color>(
          label: 'Primary',
          value: AppColors.primary,
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

    // hintText: context.knobs.nullableText(
    //   label: 'hint',
    //   initialValue: 'I am hint',
    // ),

    list: ["Take it", "Take Away"],
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

    elevation: context.knobs.number(label: 'elevation', initialValue: 0),
    padding: context.knobs.number(label: 'padding', initialValue: 0),
    height: context.knobs.number(label: 'elevation', initialValue: 0),
    width: context.knobs.number(label: 'elevation', initialValue: 0),
    menuHeight: context.knobs.number(label: 'menuHeight', initialValue: 0),
    fontSize: context.knobs.options(label: 'fontSize', options: [
      const Option<double>(label: 'Small', value: AppSize.sm),
      const Option<double>(label: 'Medium', value: AppSize.md),
      const Option<double>(label: 'Large', value: AppSize.lg),
    ]),
  );
}

/// Use case for a Secondary Outline Button style
@WidgetbookUseCase(name: 'Secondary Outline Button', type: AppDropDownButton)
Widget gradientAppDropDownButtonUseCase(BuildContext context) {
  return AppDropDownButton.gradient(
    gradient:
        context.knobs.text(label: 'gradientColor', description: 'gradient'),
    isExpanded: context.knobs.boolean(label: 'isExpanded', initialValue: false),
    icon: context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option(
        label: 'plus',
        value: Icons.plus_one,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.add,
      )
    ]),

    iconColor: context.knobs.options<Color?>(
      label: 'Icon Color',
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

    dropDownColor: context.knobs.options<Color?>(
      label: 'Dropdown Color',
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

    boxShadow: context.knobs.options<Color?>(
      label: 'BoxShadow Color',
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
    // hintText: context.knobs.nullableText(
    //   label: 'hint',
    //   initialValue: 'I am hint',
    // ),

    borderRadius: context.knobs
        .slider(label: 'Border Radius', initialValue: 0, min: 0, max: 50),

    list: ["Take it", "Take Away"],
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
    elevation: context.knobs.number(label: 'elevation', initialValue: 0),
    padding: context.knobs.number(label: 'padding', initialValue: 0),
    height: context.knobs.number(label: 'elevation', initialValue: 0),
    width: context.knobs.number(label: 'elevation', initialValue: 0),
    menuHeight: context.knobs.number(label: 'menuHeight', initialValue: 0),
    fontSize: context.knobs.options(label: 'fontSize', options: [
      const Option<double>(label: 'Small', value: AppSize.sm),
      const Option<double>(label: 'Medium', value: AppSize.md),
      const Option<double>(label: 'Large', value: AppSize.lg),
    ]),
  );
}