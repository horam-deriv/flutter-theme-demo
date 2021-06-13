import 'package:flutter/material.dart';

class ColorCodeWidget extends StatelessWidget {
  const ColorCodeWidget({
    required this.title,
    required this.value,
  });

  final String title;
  final int? value;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Text('$title :'),
          const SizedBox(width: 2),
          Text(value != null ? '$value' : '-'),
        ],
      );
}
