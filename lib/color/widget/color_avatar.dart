import 'package:flutter/material.dart';

class ColorAvatar extends StatelessWidget {
  const ColorAvatar({
    required this.name,
    this.avatarColor,
  });

  final String name;
  final Color? avatarColor;

  bool get _isColorNull => avatarColor == null;

  @override
  Widget build(BuildContext context) => _isColorNull
      ? Container(
          height: 32,
          width: 32,
          alignment: Alignment.center,
          child: const Text('Null'),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        )
      : Container(
          height: 32,
          width: 32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: avatarColor,
          ),
        );
}
