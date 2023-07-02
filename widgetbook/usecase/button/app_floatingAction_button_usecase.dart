import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/widgets/button/app_floatingAction_button.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';


@WidgetbookUseCase(name: 'Custom', type: AppFloatingActionButton)
Widget customAppFloatingActionButtonUseCase(BuildContext context) {

  bool isExtended = context.knobs.boolean(label: 'isExtended', initialValue: false);
  return AppFloatingActionButton(

    icon: context.knobs.options(label: 'Icon', options: [
      const Option(
        label: 'search',
        value: Icons.search,
      ),
      const Option(
        label: 'add_feather_fill',
        value: Icons.apple,
      )
    ]),
    tooltip: context.knobs.nullableText(
      label: 'tooltip',
      initialValue: 'Custom Button tooltip',
    ),
    onPressed: () {},
    // borderRadius: context.knobs
    //     .slider(label: 'Border Radius', initialValue: 50, min: 0, max: 50),
    // splashRadius: context.knobs
    //     .slider(label: 'Splash Radius', initialValue: 50, min: 1, max: 50),

    foregroundColor: context.knobs.options<Color?>(
      label: 'Icon Color',
      options: [
        // const Option(
        //   label: 'None',
        //   value: null,
        // ),
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
        // const Option(
        //   label: 'None',
        //   value: null,
        // ),
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
        // const Option(
        //   label: 'None',
        //   value: null,
        // ),
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
    size: context.knobs.options<String>(
      label: 'Size',
      options: [
        const Option<String>(label: 'Small', value: 'small'),
        const Option<String>(label: 'Large', value: 'large'),
        const Option<String>(label: 'Extended', value: 'extended'),
      ],
    ),
    isExtended:context.knobs.boolean(label: 'isExtended', initialValue: false),
    label:isExtended?context.knobs.nullableText(
      label: 'tooltip',
      initialValue: 'Custom Button tooltip',
    ):'',
    shape: context.knobs.options<ShapeBorder>(
      label: 'borderShape',
      options: [
        const Option<ShapeBorder>(
          label: 'Small',
          value: BeveledRectangleBorder(),
        ),
        const Option<ShapeBorder>(
          label: 'S',
          value: RoundedRectangleBorder(),
        ),
        const Option<ShapeBorder>(
          label: 'Sma',
          value: CircleBorder(),
        ),
        const Option<ShapeBorder>(
          label: 'l',
          value: ContinuousRectangleBorder(),
        ),
      ],
    ),
  );
}

// /// Use case for a Standard Button style
// @WidgetbookUseCase(name: 'Standard Button', type: AppIconButton)
// Widget standardAppIconButtonUseCase(BuildContext context) {
//   return AppIconButton.standard(
//     icon: context.knobs.options(label: 'Icon', options: [
//       const Option(
//         label: 'plus',
//         value: Icons.plus_one,
//       ),
//       const Option(
//         label: 'add_feather_fill',
//         value: Icons.add,
//       )
//     ]),
//     onPressed: () {},
//   );
// }
//
// /// Use case for a tooltip Button style
// @WidgetbookUseCase(name: 'tooltip Button', type: AppIconButton)
// Widget tooltipAppIconButtonUseCase(BuildContext context) {
//   return AppIconButton.tooltip(
//     tooltip: context.knobs.nullableText(
//       label: 'tooltip',
//       initialValue: 'Button',
//     ),
//     icon: context.knobs.options(label: 'Icon', options: [
//       const Option(
//         label: 'plus',
//         value: Icons.plus_one,
//       ),
//       const Option(
//         label: 'add_feather_fill',
//         value: Icons.add,
//       )
//     ]),
//     onPressed: () {},
//     iconSize: context.knobs.options<double>(
//       label: 'Size',
//       options: [
//         const Option<double>(label: 'Extra Small', value: AppSize.xs),
//         const Option<double>(label: 'Small', value: AppSize.sm),
//         const Option<double>(label: 'Medium', value: AppSize.md),
//         const Option<double>(label: 'Large', value: AppSize.lg),
//       ],
//     ),
//   );
// }
//
// @WidgetbookUseCase(name: 'filled Button', type: AppIconButton)
// Widget filledAppIconButtonUseCase(BuildContext context) {
//   return AppIconButton.filled(
//     icon: context.knobs.options(label: 'Icon', options: [
//       const Option(
//         label: 'plus',
//         value: Icons.plus_one,
//       ),
//       const Option(
//         label: 'add_feather_fill',
//         value: Icons.add,
//       )
//     ]),
//     onPressed: () {},
//     iconSize: context.knobs.options<double>(
//       label: 'Size',
//       options: [
//         const Option<double>(label: 'Extra Small', value: AppSize.xs),
//         const Option<double>(label: 'Small', value: AppSize.sm),
//         const Option<double>(label: 'Medium', value: AppSize.md),
//         const Option<double>(label: 'Large', value: AppSize.lg),
//       ],
//     ),
//     backgroundColor: context.knobs.options<Color>(
//       label: 'Background Color',
//       options: [
//         const Option<Color>(
//           label: 'Pink',
//           value: AppColors.pink,
//         ),
//         const Option<Color>(
//           label: 'White',
//           value: AppColors.white,
//         ),
//         const Option<Color>(
//           label: 'Primary',
//           value: AppColors.primary,
//         ),
//         const Option<Color>(
//           label: 'Secondary',
//           value: AppColors.secondary,
//         ),
//       ],
//     ),
//   );
// }
//
// /// Use case for a Primary Outline Button style
// @WidgetbookUseCase(name: 'filled tonal Button', type: AppIconButton)
// Widget filledTonalAppIconButtonUseCase(BuildContext context) {
//   return AppIconButton.filledTonal(
//     icon: context.knobs.options(label: 'Icon', options: [
//       const Option(
//         label: 'plus',
//         value: Icons.plus_one,
//       ),
//       const Option(
//         label: 'add_feather_fill',
//         value: Icons.add,
//       )
//     ]),
//     iconColor: context.knobs.options<Color?>(
//       label: 'Icon Color',
//       options: [
//         const Option(
//           label: 'None',
//           value: null,
//         ),
//         const Option<Color>(
//           label: 'Pink',
//           value: AppColors.pink,
//         ),
//         const Option<Color>(
//           label: 'White',
//           value: AppColors.white,
//         ),
//         const Option<Color>(
//           label: 'Primary',
//           value: AppColors.primary,
//         ),
//         const Option<Color>(
//           label: 'Secondary',
//           value: AppColors.secondary,
//         ),
//       ],
//     ),
//     onPressed: () {},
//     iconSize: context.knobs.options<double>(
//       label: 'Size',
//       options: [
//         const Option<double>(label: 'Extra Small', value: AppSize.xs),
//         const Option<double>(label: 'Small', value: AppSize.sm),
//         const Option<double>(label: 'Medium', value: AppSize.md),
//         const Option<double>(label: 'Large', value: AppSize.lg),
//       ],
//     ),
//   );
// }
//
// /// Use case for a Secondary Outline Button style
// @WidgetbookUseCase(name: 'Secondary Outline Button', type: AppIconButton)
// Widget outlineAppIconButtonUseCase(BuildContext context) {
//   return AppIconButton.outline(
//     icon: context.knobs.options(label: 'Icon', options: [
//       const Option(
//         label: 'plus',
//         value: Icons.plus_one,
//       ),
//       const Option(
//         label: 'add_feather_fill',
//         value: Icons.add,
//       )
//     ]),
//     iconColor: context.knobs.options<Color?>(
//       label: 'Icon Color',
//       options: [
//         const Option<Color>(
//           label: 'Pink',
//           value: AppColors.pink,
//         ),
//         const Option<Color>(
//           label: 'White',
//           value: AppColors.white,
//         ),
//         const Option<Color>(
//           label: 'Primary',
//           value: AppColors.primary,
//         ),
//         const Option<Color>(
//           label: 'Secondary',
//           value: AppColors.secondary,
//         ),
//       ],
//     ),
//     borderColor: context.knobs.options<Color?>(
//       label: 'Border Color',
//       options: [
//         const Option<Color>(
//           label: 'Pink',
//           value: AppColors.pink,
//         ),
//         const Option<Color>(
//           label: 'White',
//           value: AppColors.white,
//         ),
//         const Option<Color>(
//           label: 'Primary',
//           value: AppColors.primary,
//         ),
//         const Option<Color>(
//           label: 'Secondary',
//           value: AppColors.secondary,
//         ),
//       ],
//     ),
//     onPressed: () {},
//     iconSize: context.knobs.options<double>(
//       label: 'Size',
//       options: [
//         const Option<double>(label: 'Extra Small', value: AppSize.xs),
//         const Option<double>(label: 'Small', value: AppSize.sm),
//         const Option<double>(label: 'Medium', value: AppSize.md),
//         const Option<double>(label: 'Large', value: AppSize.lg),
//       ],
//     ),
//   );
// }