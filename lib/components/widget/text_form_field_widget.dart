import 'package:flutter/material.dart';

/// Demonstrates a sample form in flutter.
class TextFormFieldWidget extends StatefulWidget {
  /// Creates a sample Form.
  const TextFormFieldWidget();

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) => Material(
        child: Card(
          color: Theme.of(context).colorScheme.surface,
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {
              Form.of(primaryFocus!.context!)!.save();
            },
            child: _buildFormBody(),
          ),
        ),
      );

  Widget _buildFormBody() => Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          _buildFirstFormField(),
          _buildSecondFormField(),
          const SizedBox(height: 20),
          // elevated button
          _elevatedButton(context),
        ],
      );

  Widget _buildFirstFormField() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ConstrainedBox(
          constraints: BoxConstraints.tight(Size(_width(context), 50)),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              labelText: 'label',
              labelStyle: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            onSaved: (String? value) {},
          ),
        ),
      );

  Widget _buildSecondFormField() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ConstrainedBox(
          constraints: BoxConstraints.tight(Size(_width(context), 50)),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'hint',
            ),
            onSaved: (String? value) {},
          ),
        ),
      );

  double _width(BuildContext context) => MediaQuery.of(context).size.width - 60;

  Widget _elevatedButton(BuildContext context) => Row(
        children: <Widget>[
          const SizedBox(width: 8),
          const ElevatedButton(
            onPressed: null,
            child: Text('Disabled'),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      );
}
