import 'package:flutter/material.dart';

class IconbuttonWidget extends StatefulWidget {
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
