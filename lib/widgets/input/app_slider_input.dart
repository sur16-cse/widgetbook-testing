import 'package:flutter/material.dart';
import 'dart:math' as math;

class Utils {
  static List<Widget> modelBuilder<M>(
          List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();
}

class AppSliderInput extends StatefulWidget {
  const AppSliderInput({
    super.key,
    this.min,
    this.max,
    required this.currentSliderValue,
    this.onChanged,
    this.divisions,
    this.activeColor,
    this.inactiveColor,
    this.overlayColor,
    this.valueIndicatorColor,
    this.thumbColor,
    this.activeTickMarkColor,
    this.inactiveTickMarkColor,
    this.label,
    this.onChangeStart,
    this.onChangeEnd,
    this.secondaryTrackValue,
    this.overlayShape,
    this.thumbShape,
    this.trackHeight,
    this.trackShape,
    this.tickMarkShape,
    this.valueIndicatorShape,
    this.valueIndicatorTextStyle,
    this.buildSideLabel,
    this.buildTopLabel,
    this.topLabel,
  });

  const AppSliderInput.primary({
    super.key,
    required this.currentSliderValue,
    this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.overlayColor,
    this.thumbColor,
    this.onChangeStart,
    this.onChangeEnd,
    this.overlayShape = const RoundSliderOverlayShape(overlayRadius: 40),
    this.thumbShape = const RoundSliderThumbShape(
      enabledThumbRadius: 14.0,
      pressedElevation: 8.0,
    ),
    this.trackHeight,
    this.trackShape,
  })  : min = 0.0,
        max = 1.0,
        divisions = null,
        valueIndicatorColor = null,
        valueIndicatorShape = null,
        valueIndicatorTextStyle = null,
        secondaryTrackValue = 0.0,
        label = false,
        tickMarkShape = null,
        activeTickMarkColor = null,
        inactiveTickMarkColor = null,
        buildSideLabel = false,
        buildTopLabel = false,
        topLabel = null;

  const AppSliderInput.secondary({
    super.key,
    this.currentSliderValue = 0.2,
    this.secondaryTrackValue = 0.5,
    this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.overlayColor,
    this.thumbColor,
    this.onChangeStart,
    this.onChangeEnd,
    this.overlayShape = const RoundSliderOverlayShape(overlayRadius: 40),
    this.thumbShape = const RoundSliderThumbShape(
      enabledThumbRadius: 14.0,
      pressedElevation: 8.0,
    ),
    this.trackHeight,
    this.trackShape,
  })  : divisions = null,
        valueIndicatorColor = null,
        activeTickMarkColor = null,
        inactiveTickMarkColor = null,
        label = false,
        min = 0,
        max = 1.0,
        tickMarkShape = null,
        valueIndicatorShape = null,
        valueIndicatorTextStyle = null,
        buildSideLabel = false,
        buildTopLabel = false,
        topLabel = null;

  const AppSliderInput.standard({
    super.key,
    this.currentSliderValue = 10,
    this.label,
    this.onChanged,
    this.min,
    this.max = 100,
    this.activeColor,
    this.inactiveColor,
    this.overlayColor,
    this.thumbColor,
    this.onChangeStart,
    this.onChangeEnd,
    this.divisions = 5,
    this.valueIndicatorColor,
    this.activeTickMarkColor,
    this.inactiveTickMarkColor,
  })  : thumbShape = null,
        overlayShape = null,
        trackHeight = 10,
        trackShape = null,
        tickMarkShape = null,
        valueIndicatorShape = null,
        valueIndicatorTextStyle = null,
        secondaryTrackValue = 0,
        buildSideLabel = false,
        buildTopLabel = false,
        topLabel = null;

  const AppSliderInput.themedRoundSlider({
    super.key,
    this.currentSliderValue = 10,
    required this.onChanged,
    this.min,
    this.max = 100,
    this.divisions = 5,
    this.activeColor = Colors.purple,
    this.inactiveColor = const Color.fromRGBO(128, 0, 128, 0.6),
    this.thumbColor = Colors.pinkAccent,
    this.activeTickMarkColor = Colors.pinkAccent,
    this.inactiveTickMarkColor = Colors.white,
    this.trackHeight = 10,
    this.trackShape = const RoundedRectSliderTrackShape(),
    this.thumbShape = const RoundSliderThumbShape(
      enabledThumbRadius: 14.0,
      pressedElevation: 8.0,
    ),
    this.overlayColor = const Color.fromRGBO(255, 192, 203, 0.2),
    this.overlayShape = const RoundSliderOverlayShape(overlayRadius: 32.0),
    this.tickMarkShape = const RoundSliderTickMarkShape(),
    this.valueIndicatorShape = const PaddleSliderValueIndicatorShape(),
    this.valueIndicatorColor = Colors.black,
    this.valueIndicatorTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    ),
  })  : onChangeStart = null,
        onChangeEnd = null,
        secondaryTrackValue = 0,
        label = true,
        buildSideLabel = false,
        buildTopLabel = false,
        topLabel = null;

  const AppSliderInput.polygonSliderThumb({
    super.key,
    this.currentSliderValue = 10,
    required this.onChanged,
    this.min,
    this.max = 100,
    this.divisions = 5,
    this.activeColor = Colors.purple,
    this.inactiveColor = const Color.fromRGBO(128, 0, 128, 0.6),
    this.thumbColor = Colors.pinkAccent,
    this.activeTickMarkColor = Colors.pinkAccent,
    this.inactiveTickMarkColor = Colors.white,
    this.trackHeight = 10,
    this.trackShape = const RoundedRectSliderTrackShape(),
    this.thumbShape = const PolygonSliderThumb(
      thumbRadius: 16.0,
    ),
    this.overlayColor = const Color.fromRGBO(255, 192, 203, 0.2),
    this.overlayShape = const RoundSliderOverlayShape(overlayRadius: 32.0),
    this.tickMarkShape = const RoundSliderTickMarkShape(),
    this.valueIndicatorTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    ),
  })  : onChangeStart = null,
        onChangeEnd = null,
        secondaryTrackValue = 0,
        label = false,
        valueIndicatorShape = null,
        valueIndicatorColor = null,
        buildSideLabel = false,
        buildTopLabel = false,
        topLabel = null;

  final num? min;
  final num? max;
  final num? currentSliderValue;
  final num? divisions;
  final ValueChanged<double>? onChanged;
  final ValueChanged<double>? onChangeStart;
  final ValueChanged<double>? onChangeEnd;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? overlayColor;
  final Color? valueIndicatorColor;
  final Color? thumbColor;
  final Color? activeTickMarkColor;
  final Color? inactiveTickMarkColor;
  final bool? label;
  final num? secondaryTrackValue;
  final SliderComponentShape? overlayShape;
  final SliderComponentShape? thumbShape;
  final SliderTrackShape? trackShape;
  final SliderTickMarkShape? tickMarkShape;
  final SliderComponentShape? valueIndicatorShape;
  final num? trackHeight;
  final TextStyle? valueIndicatorTextStyle;
  final bool? buildSideLabel;
  final bool? buildTopLabel;
  final List<String>? topLabel;

  @override
  _AppSliderInputState createState() => _AppSliderInputState();
}

class _AppSliderInputState extends State<AppSliderInput> {
  late double _value;

  @override
  void initState() {
    _value = widget.currentSliderValue as double;
    widget.onChanged!(_value);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppSliderInput oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentSliderValue != widget.currentSliderValue) {
      _value = widget.currentSliderValue as double;
      widget.onChanged!(_value);
    }
  }

  int indexTop = 0;
  @override
  Widget build(BuildContext context) {
    final sliderTheme = SliderTheme.of(context).copyWith(
      activeTrackColor: widget.activeColor ?? Colors.blue,
      thumbColor: widget.thumbColor ?? Colors.blue,
      overlayColor: widget.overlayColor ?? Colors.blue.withOpacity(0.3),
      thumbShape: widget.thumbShape.runtimeType == PolygonSliderThumb
          ? PolygonSliderThumb(thumbRadius: 16, sliderValue: _value)
          : widget.thumbShape ??
              const RoundSliderThumbShape(enabledThumbRadius: 12.0),
      overlayShape:
          widget.overlayShape ?? RoundSliderOverlayShape(overlayRadius: 24.0),
      trackHeight: widget.trackHeight != 0 || widget.trackHeight != null
          ? widget.trackHeight as double
          : 4.0,
      activeTickMarkColor: widget.activeTickMarkColor ?? Colors.white54,
      inactiveTickMarkColor: widget.inactiveTickMarkColor ?? Colors.blueAccent,
      valueIndicatorTextStyle: widget.valueIndicatorTextStyle,
      valueIndicatorShape: widget.valueIndicatorShape,
      valueIndicatorColor: widget.valueIndicatorColor ?? Colors.grey,
      trackShape: widget.trackShape ?? const RoundedRectSliderTrackShape(),
      tickMarkShape: widget.tickMarkShape ?? const RoundSliderTickMarkShape(),
      inactiveTrackColor: widget.inactiveColor ?? Colors.lightBlue[200],
    );

    return SliderTheme(
        data: sliderTheme,
        child: (() {
          if (widget.buildSideLabel == true) {
            return Row(
              children: [
                buildSideLabel(widget.min as double),
                Expanded(
                  child: (() {
                    if (widget.buildTopLabel == true) {
                      return buildSliderTopLabel();
                    } else {
                      return sliderWidget();
                    }
                  }()),
                ),
                buildSideLabel(widget.max as double),
              ],
            );
          } else if (widget.buildTopLabel == true) {
            return buildSliderTopLabel();
          } else {
            return sliderWidget();
          }
        }()));
  }

  Widget sliderWidget(
      [double? value,
      double? min,
      double? max,
      int? division,
      void Function(double)? onChanged]) {
    print('${[value, min, max, division, widget.buildTopLabel]}');
    return Slider(
      value: widget.buildTopLabel != true ? _value : value!,
      min: widget.min != 0 ? widget.min as double : 0.0,
      max: widget.max != 1
          ? widget.buildTopLabel != true
              ? widget.max as double
              : max!
          : 1.0,
      divisions: widget.divisions != null
          ? widget.buildTopLabel != true
              ? widget.divisions as int
              : division
          : null,
      label: widget.label == true ? '${_value.round()}' : null,
      onChanged: widget.buildTopLabel != true
          ? (value) {
              setState(() {
                _value = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            }
          : onChanged!,
      onChangeStart: (value) {
        setState(() {
          _value = value;
        });
        if (widget.onChangeStart != null) {
          widget.onChanged!(value);
        }
      },
      onChangeEnd: (value) {
        setState(() {
          _value = value;
        });
        if (widget.onChangeStart != null) {
          widget.onChangeEnd!(value);
        }
      },
      secondaryTrackValue: widget.secondaryTrackValue != 0
          ? widget.secondaryTrackValue as double
          : 0,
    );
  }

  Widget buildSideLabel(double value) => Center(
        child: Text(
          value.round().toString(),
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      );

  Widget buildSliderTopLabel() {
    print("jo0000000000000");
    final labels = widget.topLabel?.map((ele) => ele.toString()).toList();
    final double min = widget.min as double? ?? 0;
    final double max = labels!.length - 1.0;
    final divisions = labels.length - 1;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Utils.modelBuilder(
              labels,
              (index, label) {
                const selectedColor = Colors.black;
                final unselectedColor = Colors.black.withOpacity(0.3);
                final isSelected = index <= indexTop;
                final color = isSelected ? selectedColor : unselectedColor;

                return buildLabel(label: label, color: color, width: 30);
              },
            ),
          ),
        ),
        sliderWidget(
          indexTop.toDouble(),
          min,
          max,
          divisions,
          // label: labels[indexTop],
          (double value) => setState(() => indexTop = value.toInt()),
        ),
      ],
    );
  }

  Widget buildLabel({
    required String label,
    required double width,
    required Color color,
  }) =>
      Container(
        width: width,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ).copyWith(color: color),
        ),
      );
}

class RoundedRectSliderOverlayShape extends SliderComponentShape {
  final double radius;

  const RoundedRectSliderOverlayShape({required this.radius});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(radius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final canvas = context.canvas;

    final paint = Paint()
      ..color = sliderTheme.overlayColor!
      ..style = PaintingStyle.fill;

    final rect = Rect.fromCircle(center: center, radius: radius);

    canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(radius)), paint);
  }
}

class DiamondSliderOverlayShape extends SliderComponentShape {
  final double size;

  const DiamondSliderOverlayShape({required this.size});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(size, size);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final canvas = context.canvas;

    final paint = Paint()
      ..color = sliderTheme.overlayColor!
      ..style = PaintingStyle.fill;

    Path diamond = Path();
    diamond.moveTo(center.dx, center.dy - size / 2);
    diamond.lineTo(center.dx + size / 2, center.dy);
    diamond.lineTo(center.dx, center.dy + size / 2);
    diamond.lineTo(center.dx - size / 2, center.dy);
    diamond.close();

    canvas.drawPath(diamond, paint);
  }
}

class SquareSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(20, 30);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;
    canvas.drawShadow(
        Path()
          ..addRRect(RRect.fromRectAndRadius(
            Rect.fromCenter(center: center, width: 24, height: 30),
            const Radius.circular(4),
          )),
        Colors.black,
        5,
        false);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(center: center, width: 20, height: 30),
        const Radius.circular(4),
      ),
      Paint()..color = Colors.amber,
    );
  }
}

class LineSliderTickMarkShape extends SliderTickMarkShape {
  const LineSliderTickMarkShape({
    this.tickMarkRadius,
  });

  final double? tickMarkRadius;

  @override
  Size getPreferredSize({
    required SliderThemeData sliderTheme,
    required bool isEnabled,
  }) {
    assert(sliderTheme != null);
    assert(sliderTheme.trackHeight != null);
    assert(isEnabled != null);
    return Size.fromRadius(tickMarkRadius ?? sliderTheme.trackHeight! / 4);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    required bool isEnabled,
  }) {
    Color? begin;
    Color? end;
    switch (textDirection) {
      case TextDirection.ltr:
        final bool isTickMarkRightOfThumb = center.dx > thumbCenter.dx;
        begin = isTickMarkRightOfThumb
            ? sliderTheme.disabledInactiveTickMarkColor
            : sliderTheme.disabledActiveTickMarkColor;
        end = isTickMarkRightOfThumb
            ? sliderTheme.inactiveTickMarkColor
            : sliderTheme.activeTickMarkColor;
        break;
      case TextDirection.rtl:
        final bool isTickMarkLeftOfThumb = center.dx < thumbCenter.dx;
        begin = isTickMarkLeftOfThumb
            ? sliderTheme.disabledInactiveTickMarkColor
            : sliderTheme.disabledActiveTickMarkColor;
        end = isTickMarkLeftOfThumb
            ? sliderTheme.inactiveTickMarkColor
            : sliderTheme.activeTickMarkColor;
        break;
    }
    final Paint paint = Paint()
      ..color = ColorTween(begin: begin, end: end).evaluate(enableAnimation)!;

    final double tickMarkRadius = getPreferredSize(
          isEnabled: isEnabled,
          sliderTheme: sliderTheme,
        ).width /
        2;
    if (tickMarkRadius > 0) {
      context.canvas.drawLine(Offset(center.dx - 5, center.dy - 5),
          Offset(center.dx + 5, center.dy + 5), paint);
    }
  }
}

class PolygonSliderThumb extends SliderComponentShape {
  final double thumbRadius;
  final double? sliderValue;

  const PolygonSliderThumb({
    required this.thumbRadius,
    this.sliderValue,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    int sides = 4;
    double innerPolygonRadius = thumbRadius * 1.2;
    double outerPolygonRadius = thumbRadius * 1.4;
    double angle = (math.pi * 2) / sides;
    final outerPathColor = Paint()
      ..color = Colors.pink.shade800
      ..style = PaintingStyle.fill;

    var outerPath = Path();

    Offset startPoint2 = Offset(
      outerPolygonRadius * math.cos(0.0),
      outerPolygonRadius * math.sin(0.0),
    );

    outerPath.moveTo(
      startPoint2.dx + center.dx,
      startPoint2.dy + center.dy,
    );

    for (int i = 1; i <= sides; i++) {
      double x = outerPolygonRadius * math.cos(angle * i) + center.dx;
      double y = outerPolygonRadius * math.sin(angle * i) + center.dy;
      outerPath.lineTo(x, y);
    }

    outerPath.close();
    canvas.drawPath(outerPath, outerPathColor);
    final innerPathColor = Paint()
      ..color = sliderTheme.thumbColor ?? Colors.black
      ..style = PaintingStyle.fill;

    var innerPath = Path();

    Offset startPoint = Offset(
      innerPolygonRadius * math.cos(0.0),
      innerPolygonRadius * math.sin(0.0),
    );

    innerPath.moveTo(
      startPoint.dx + center.dx,
      startPoint.dy + center.dy,
    );

    for (int i = 1; i <= sides; i++) {
      double x = innerPolygonRadius * math.cos(angle * i) + center.dx;
      double y = innerPolygonRadius * math.sin(angle * i) + center.dy;
      innerPath.lineTo(x, y);
    }
    innerPath.close();
    canvas.drawPath(innerPath, innerPathColor);

    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: thumbRadius,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      text: sliderValue?.round().toString(),
    );

    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    tp.layout();

    Offset textCenter = Offset(
      center.dx - (tp.width / 2),
      center.dy - (tp.height / 2),
    );

    tp.paint(canvas, textCenter);
  }
}