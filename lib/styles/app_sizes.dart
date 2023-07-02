import 'package:flutter/material.dart';

/// Styles class containing fixed spacing values
/// to be reused for gaps, padding, margins, ..etc across the app widgets
class AppSize {
  /// A spacing of size xx-small
  static const double xxs =3;

  /// A spacing of size x-small
  static const double xs = 7;

  /// A spacing of size small
  static const double sm = 15;

  /// A spacing of size medium (default)
  static const double md = 20;

  /// A spacing of size large
  static const double lg = 30;

  /// A spacing of size x-large
  static const double xl = 60;

  /// A spacing of size xx-large
  static const double xxl = 70;
}

class ButtonSize {
  static const Size xs = Size(AppSize.xxs, AppSize.xs);
  static const Size sm = Size(AppSize.xs, AppSize.sm);
  static const Size md = Size(AppSize.sm, AppSize.md);
  static const Size lg = Size(AppSize.md, AppSize.lg);
  static const Size xl = Size(AppSize.lg, AppSize.xl);
}