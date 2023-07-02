import 'package:flutter/material.dart';
import 'package:n_learn/styles/app_colors.dart';
import 'package:n_learn/widgets/input/app_slider_input.dart';

import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Custom', type: AppSliderInput)
Widget customAppSliderUseCase(BuildContext context) {
  return AppSliderInput(
    min: context.knobs.number(label: 'min', initialValue: 0),
    max: context.knobs.number(label: 'max', initialValue: 100),
    label: context.knobs.boolean(label: 'hasLabel', initialValue: true),
    buildSideLabel:
        context.knobs.boolean(label: 'hasBuildSideLabel', initialValue: false),
    buildTopLabel:
        context.knobs.boolean(label: 'hasBuildTopLabel', initialValue: false),
    topLabel: ['0', '18', '30', '50', '+'],
    currentSliderValue:
        context.knobs.number(label: 'current slider value', initialValue: 10),
    secondaryTrackValue: context.knobs
        .number(label: 'secondary track slider value', initialValue: 0),
    divisions:
        context.knobs.nullableNumber(label: 'divisions', initialValue: 10),
    activeColor: context.knobs.options<Color?>(
      label: 'active color',
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
    inactiveColor: context.knobs.options<Color?>(
      label: 'inactive mark color',
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
    activeTickMarkColor: context.knobs.options<Color?>(
      label: 'active tick mark color',
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
    inactiveTickMarkColor: context.knobs.options<Color?>(
      label: 'inactive tick mark color',
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
    tickMarkShape: context.knobs
        .options<SliderTickMarkShape?>(label: 'tickMarkShape', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option<SliderTickMarkShape?>(
        label: 'roundSliderTickMarkShape',
        value: RoundSliderTickMarkShape(),
      ),
      const Option<SliderTickMarkShape?>(
        label: 'lineSliderTickMarkShape',
        value: LineSliderTickMarkShape(),
      ),
      Option<SliderTickMarkShape?>(
        label: 'noTick-mark',
        value: SliderTickMarkShape.noTickMark,
      ),
    ]),
    overlayShape: context.knobs
        .options<SliderComponentShape?>(label: 'overlayShape', options: [
      Option<SliderComponentShape?>(
        label: 'noOverlay',
        value: SliderComponentShape.noOverlay,
      ),
      const Option<SliderComponentShape?>(
        label: 'roundSliderOverlayShape',
        value: RoundSliderOverlayShape(),
      ),
      const Option<SliderComponentShape?>(
        label: 'roundedRectSliderOverlayShape',
        value: RoundedRectSliderOverlayShape(radius: 50),
      ),
      const Option<SliderComponentShape?>(
        label: 'diamondSliderOverlayShape',
        value: DiamondSliderOverlayShape(size: 50),
      ),
    ]),
    overlayColor: context.knobs.options<Color?>(
      label: 'overlay color',
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
    thumbColor: context.knobs.options<Color?>(
      label: 'thumb color',
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
    thumbShape: context.knobs
        .options<SliderComponentShape?>(label: 'thumbShape', options: [
      const Option<SliderComponentShape?>(
        label: 'roundSliderOverlayShape',
        value: RoundSliderThumbShape(
          enabledThumbRadius: 14.0,
          pressedElevation: 8.0,
        ),
      ),
      Option<SliderComponentShape?>(
        label: 'squareSliderThumbShape',
        value: SquareSliderThumbShape(),
      ),
      const Option<SliderComponentShape?>(
        label: 'polygonSliderThumb',
        value: PolygonSliderThumb(thumbRadius: 16.0),
      ),
      Option<SliderComponentShape?>(
        label: 'noThumb',
        value: SliderComponentShape.noThumb,
      ),
    ]),
    valueIndicatorColor: context.knobs.options<Color?>(
      label: 'value indicator color',
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
    valueIndicatorShape: context.knobs.options<SliderComponentShape?>(
      label: 'valueIndicatorShape',
      options: [
        const Option<SliderComponentShape?>(
          label: 'rectangularSliderValueIndicatorShape',
          value: RectangularSliderValueIndicatorShape(),
        ),
        const Option<SliderComponentShape?>(
          label: 'dropSliderValueIndicatorShape',
          value: DropSliderValueIndicatorShape(),
        ),
        const Option<SliderComponentShape?>(
          label: 'paddleSliderValueIndicatorShape',
          value: PaddleSliderValueIndicatorShape(),
        ),
      ],
    ),
    trackHeight: context.knobs.number(label: 'trackHeight', initialValue: 10),
    trackShape:
        context.knobs.options<SliderTrackShape?>(label: 'trackShape', options: [
      const Option<SliderTrackShape?>(
        label: 'roundedRectSliderTrackShape',
        value: RoundedRectSliderTrackShape(),
      ),
      const Option<SliderTrackShape?>(
        label: 'rectangularSliderTrackShape',
        value: RectangularSliderTrackShape(),
      ),
    ]),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'Primary', type: AppSliderInput)
Widget primaryAppSliderUseCase(BuildContext context) {
  return AppSliderInput.primary(
    currentSliderValue:
        context.knobs.number(label: 'current slider value', initialValue: 0.3),
    activeColor: context.knobs.options<Color?>(
      label: 'active color',
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
    inactiveColor: context.knobs.options<Color?>(
      label: 'inactive mark color',
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
    overlayColor: context.knobs.options<Color?>(
      label: 'overlay color',
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
    thumbColor: context.knobs.options<Color?>(
      label: 'thumb color',
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
    overlayShape: RoundSliderOverlayShape(overlayRadius: 40),
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: 14.0,
      pressedElevation: 8.0,
    ),
    trackHeight: context.knobs.number(label: 'trackHeight', initialValue: 10),
    trackShape:
        context.knobs.options<SliderTrackShape?>(label: 'trackShape', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option<SliderTrackShape?>(
        label: 'rectangularSliderTrackShape',
        value: RectangularSliderTrackShape(),
      ),
      const Option<SliderTrackShape?>(
        label: 'roundedRectSliderTrackShape',
        value: RoundedRectSliderTrackShape(),
      ),
    ]),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'Secondary', type: AppSliderInput)
Widget secondaryAppSliderUseCase(BuildContext context) {
  return AppSliderInput.secondary(
    currentSliderValue:
        context.knobs.number(label: 'current slider value', initialValue: 0.2),
    secondaryTrackValue: context.knobs
        .number(label: 'secondary track slider value', initialValue: 0.5),
    activeColor: context.knobs.options<Color?>(
      label: 'active color',
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
    inactiveColor: context.knobs.options<Color?>(
      label: 'inactive mark color',
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
    overlayColor: context.knobs.options<Color?>(
      label: 'overlay color',
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
    thumbColor: context.knobs.options<Color?>(
      label: 'thumb color',
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
    overlayShape: RoundSliderOverlayShape(overlayRadius: 40),
    thumbShape: RoundSliderThumbShape(
      enabledThumbRadius: 14.0,
      pressedElevation: 8.0,
    ),
    trackHeight: context.knobs.number(label: 'trackHeight', initialValue: 10),
    trackShape:
        context.knobs.options<SliderTrackShape?>(label: 'trackShape', options: [
      const Option(
        label: 'None',
        value: null,
      ),
      const Option<SliderTrackShape?>(
        label: 'rectangularSliderTrackShape',
        value: RectangularSliderTrackShape(),
      ),
      const Option<SliderTrackShape?>(
        label: 'roundedRectSliderTrackShape',
        value: RoundedRectSliderTrackShape(),
      ),
    ]),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'Standard', type: AppSliderInput)
Widget standardAppSliderUseCase(BuildContext context) {
  return AppSliderInput.standard(
    min: context.knobs.number(label: 'min', initialValue: 0),
    max: context.knobs.number(label: 'max', initialValue: 100),
    currentSliderValue:
        context.knobs.number(label: 'current slider value', initialValue: 10),
    label: context.knobs.boolean(label: 'hasLabel', initialValue: true),
    divisions:
        context.knobs.nullableNumber(label: 'divisions', initialValue: 5),
    activeColor: context.knobs.options<Color?>(
      label: 'active color',
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
    inactiveColor: context.knobs.options<Color?>(
      label: 'inactive mark color',
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
    activeTickMarkColor: context.knobs.options<Color?>(
      label: 'active tick mark color',
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
    inactiveTickMarkColor: context.knobs.options<Color?>(
      label: 'inactive tick mark color',
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
    overlayColor: context.knobs.options<Color?>(
      label: 'overlay color',
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
    thumbColor: context.knobs.options<Color?>(
      label: 'thumb color',
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
    valueIndicatorColor: context.knobs.options<Color?>(
      label: 'value indicator color',
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
  );
}

@WidgetbookUseCase(name: 'polygon', type: AppSliderInput)
Widget polygonAppSliderUseCase(BuildContext context) {
  return AppSliderInput.polygonSliderThumb(
    min: context.knobs.number(label: 'min', initialValue: 0),
    max: context.knobs.number(label: 'max', initialValue: 100),
    currentSliderValue:
        context.knobs.number(label: 'current slider value', initialValue: 10),
    divisions:
        context.knobs.nullableNumber(label: 'divisions', initialValue: 5),
    activeColor: context.knobs.options<Color?>(
      label: 'active color',
      options: [
        const Option(
          label: 'default',
          value: Colors.purple,
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
    activeTickMarkColor: context.knobs.options<Color?>(
      label: 'active tick mark color',
      options: [
        const Option(
          label: 'default',
          value: Colors.pinkAccent,
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
    inactiveColor: context.knobs.options<Color?>(
      label: 'inactive mark color',
      options: [
        const Option(
          label: 'default',
          value: Color.fromRGBO(128, 0, 128, 0.6),
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
    inactiveTickMarkColor: context.knobs.options<Color?>(
      label: 'inactive tick mark color',
      options: [
        const Option(
          label: 'default',
          value: Colors.white,
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
    overlayColor: context.knobs.options<Color?>(
      label: 'overlay color',
      options: [
        const Option(
          label: 'default',
          value: Color.fromRGBO(255, 192, 203, 0.2),
        ),
        const Option(
          label: 'purple',
          value: Colors.purpleAccent,
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
    thumbColor: context.knobs.options<Color?>(
      label: 'thumb color',
      options: [
        const Option(
          label: 'default',
          value: Colors.pinkAccent,
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
    overlayShape: context.knobs
        .options<SliderComponentShape?>(label: 'overlayShape', options: [
      const Option<SliderComponentShape?>(
        label: 'roundSliderOverlayShape',
        value: RoundSliderOverlayShape(overlayRadius: 40),
      ),
      const Option<SliderComponentShape?>(
        label: 'roundedRectSliderOverlayShape',
        value: RoundedRectSliderOverlayShape(radius: 40),
      ),
      Option<SliderComponentShape?>(
        label: 'noOverlay',
        value: SliderComponentShape.noOverlay,
      ),
      const Option<SliderComponentShape?>(
        label: 'diamondSliderOverlayShape',
        value: DiamondSliderOverlayShape(size: 60),
      ),
    ]),
    thumbShape: PolygonSliderThumb(thumbRadius: 16.0),
    tickMarkShape: RoundSliderTickMarkShape(),
    trackHeight: context.knobs.number(label: 'trackHeight', initialValue: 10),
    trackShape: RoundedRectSliderTrackShape(),
    onChanged: (value) {
      print(value);
    },
  );
}

@WidgetbookUseCase(name: 'Custom', type: AppSliderInput)
Widget roundedThemedAppSliderUseCase(BuildContext context) {
  return AppSliderInput.themedRoundSlider(
    min: context.knobs.number(label: 'min', initialValue: 0),
    max: context.knobs.number(label: 'max', initialValue: 100),
    currentSliderValue:
        context.knobs.number(label: 'current slider value', initialValue: 10),
    divisions:
        context.knobs.nullableNumber(label: 'divisions', initialValue: 5),
    activeColor: context.knobs.options<Color?>(
      label: 'active color',
      options: [
        const Option(
          label: 'default',
          value: Colors.purple,
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
    activeTickMarkColor: context.knobs.options<Color?>(
      label: 'active tick mark color',
      options: [
        const Option(
          label: 'default',
          value: Colors.pinkAccent,
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
    inactiveColor: context.knobs.options<Color?>(
      label: 'inactive mark color',
      options: [
        const Option(
          label: 'default',
          value: Color.fromRGBO(128, 0, 128, 0.6),
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
    inactiveTickMarkColor: context.knobs.options<Color?>(
      label: 'inactive tick mark color',
      options: [
        const Option(
          label: 'default',
          value: Colors.white,
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
    overlayColor: context.knobs.options<Color?>(
      label: 'overlay color',
      options: [
        const Option(
          label: 'default',
          value: Color.fromRGBO(255, 192, 203, 0.2),
        ),
        const Option(
          label: 'purple',
          value: Colors.purpleAccent,
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
    thumbColor: context.knobs.options<Color?>(
      label: 'thumb color',
      options: [
        const Option(
          label: 'default',
          value: Colors.pinkAccent,
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
    overlayShape: context.knobs
        .options<SliderComponentShape?>(label: 'overlayShape', options: [
      const Option<SliderComponentShape?>(
        label: 'roundSliderOverlayShape',
        value: RoundSliderOverlayShape(overlayRadius: 40),
      ),
      const Option<SliderComponentShape?>(
        label: 'roundedRectSliderOverlayShape',
        value: RoundedRectSliderOverlayShape(radius: 40),
      ),
      Option<SliderComponentShape?>(
        label: 'noOverlay',
        value: SliderComponentShape.noOverlay,
      ),
      const Option<SliderComponentShape?>(
        label: 'diamondSliderOverlayShape',
        value: DiamondSliderOverlayShape(size: 60),
      ),
    ]),
    thumbShape: const RoundSliderThumbShape(
      enabledThumbRadius: 14.0,
      pressedElevation: 8.0,
    ),
    tickMarkShape: RoundSliderTickMarkShape(),
    trackHeight: context.knobs.number(label: 'trackHeight', initialValue: 10),
    trackShape: RoundedRectSliderTrackShape(),
    onChanged: (value) {
      print(value);
    },
    valueIndicatorColor: context.knobs.options<Color?>(
      label: 'value indicator color',
      options: [
        const Option(
          label: 'default',
          value: AppColors.black,
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
    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
  );
}