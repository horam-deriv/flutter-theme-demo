import 'package:flutter/material.dart';

enum Type { first, second }

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  Type? _character = Type.first;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          ListTile(
            title: const Text('First Type'),
            leading: Radio<Type>(
              value: Type.first,
              groupValue: _character,
              onChanged: (Type? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Second Type'),
            leading: Radio<Type>(
              value: Type.second,
              groupValue: _character,
              onChanged: (Type? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      );
}
