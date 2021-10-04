import 'package:flutter/material.dart';

/// An avatar widget to show theme colors
class ColorAvatar extends StatelessWidget {
  /// Construct a avatar that has a certain color in its background.
  const ColorAvatar({
    required this.name,
    this.avatarColor,
  });

  /// Theme color name
  final String name;

  /// Color to show inside the avatar.
  final Color? avatarColor;

  bool get _isColorNull => avatarColor == null;

  @override
  Widget build(BuildContext context) =>
      _isColorNull ? _buildNullColorWidget() : _buildColorWidget();

  Widget _buildNullColorWidget() => Container(
        height: 32,
        width: 32,
        alignment: Alignment.center,
        child: const Text('Null'),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      );

  Widget _buildColorWidget() => Container(
        height: 32,
        width: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: avatarColor,
        ),
      );
}
