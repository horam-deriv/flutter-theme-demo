import 'package:flutter/material.dart';

/// A class to contain color fields and values.
class PresentationColor {
  /// Creates a data model to present theme Colors.
  const PresentationColor({
    required this.color,
    required this.name,
  });

  /// Immutable color value in ARGB format.
  final Color? color;

  /// Color name
  final String name;

  ///  Color red channel in an 8 bit value.
  int? get red => color?.red;

  ///  Color blue channel in an 8 bit value.
  int? get blue => color?.blue;

  ///  Color green channel in an 8 bit value.
  int? get green => color?.green;

  /// color transparency, 1 stands for fully transparent.
  int? get alpha => color?.alpha;
}
