import 'package:flutter/material.dart';

/// shows an IconButton in the screen.
class IconbuttonWidget extends StatefulWidget {
  /// creates an IconButton widget.
  const IconbuttonWidget();

  @override
  State<IconbuttonWidget> createState() => _IconbuttonWidgetState();
}

/// This is the private State class that goes with IconbuttonWidget.
class _IconbuttonWidgetState extends State<IconbuttonWidget> {
  @override
  Widget build(BuildContext context) => IconButton(
        icon: const Icon(Icons.download),
        tooltip: 'tooltip sample',
        onPressed: () {},
      );
}
