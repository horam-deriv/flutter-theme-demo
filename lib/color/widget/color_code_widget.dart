import 'package:flutter/material.dart';

/// A widget to show fonts RGBA codes in the fonts screen.
class ColorCodeWidget extends StatelessWidget {
  /// Creates a widget to show color code and its value.
  const ColorCodeWidget({
    required this.code,
    required this.value,
  });

  /// Color code.
  final String code;

  /// Color value.
  final int? value;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Text('$code :'),
          const SizedBox(width: 2),
          Text(value != null ? '$value' : '-'),
        ],
      );
}
