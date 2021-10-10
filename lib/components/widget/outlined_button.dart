import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  /// Creates an outlined Button widget.
  const OutlinedButtonWidget({
    required this.title,
    required this.onTap,
  });

  /// onTap callback
  final VoidCallback onTap;

  /// Button title.
  final String title;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        onPressed: onTap,
        child: Text(title),
      );
}
