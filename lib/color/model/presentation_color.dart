import 'package:flutter/material.dart';

class PresentationColor {
  // data model to present theme Colors.
  const PresentationColor({
    required this.color,
    required this.name,
  });

  final Color? color;

  final String name;

  int? get red => color?.red;
  int? get blue => color?.blue;
  int? get green => color?.green;
  // color transparency, 1 stands for fully transparent.
  int? get alpha => color?.alpha;
}
