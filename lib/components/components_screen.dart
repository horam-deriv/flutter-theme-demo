import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/components/drop_down_widget.dart';
import 'package:flutter_theme_demo/components/icon_button_widget.dart';
import 'package:flutter_theme_demo/components/outlined_button.dart';
import 'package:flutter_theme_demo/components/text_form_field_widget.dart';

class ComponentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildSectionTitle('compound components', context),
              const TextFormFieldWidget(),
              const SizedBox(height: 20),
              const Text('Outlined Buttons'),
              _buildOutlinedButtons(context),
              const SizedBox(height: 20),
              const Divider(thickness: 2),
              _buildSectionTitle('Stand alone components', context),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    color: Colors.white,
                    child: Column(
                      children: const <Widget>[
                        Text('Drop Down Buttons'),
                        DropDownWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                      padding: const EdgeInsets.all(4),
                      color: Colors.white,
                      child: Column(
                        children: const <Widget>[
                          Text('Icon Buttons'),
                          IconbuttonWidget(),
                        ],
                      )),
                ],
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              _buildCard(context),
              const SizedBox(height: 20),
              _buildChip(),
              const SizedBox(height: 20),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      );

  Widget _buildSectionTitle(String title, BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 20),
        ],
      );

  Widget _buildOutlinedButtons(BuildContext context) => Row(
        children: <Widget>[
          OutlinedButtonWidget(
            title: 'Show Dialog',
            onTap: () => _showMyDialog(context),
          ),
          const SizedBox(width: 10),
          OutlinedButtonWidget(
            title: 'Show BottomSheet',
            onTap: () => _showModalSheet(context),
          ),
        ],
      );

  Widget _buildCard(BuildContext context) => Card(
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(16),
          width: 300,
          height: 100,
          child: Text(
            'A demo card to show ui features.',
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      );

  Future<void> _showMyDialog(BuildContext context) async => showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Approve',
                textAlign: TextAlign.end,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const TextButton(
              onPressed: null,
              child: Text(
                'Disabled',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      );

  Widget _buildChip() {
    const String label = 'label';
    return InputChip(
      padding: const EdgeInsets.all(2),
      avatar: CircleAvatar(
        child: Text(label[0].toUpperCase()),
      ),
      label: const Text('Sample Input Chips'),
      onSelected: (bool selected) {},
      onDeleted: () {},
    );
  }

  void _showModalSheet(BuildContext context) => showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) => Container(
          height: 200,
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Lorem ipsum dolor sit amet, consectetur adipiscing'
                    'elit. Nunc lacinia tellus at diam mollis eleifend. Duis '
                    'consectetur, mauris ut vulputate maximus, lorem lectus maximus'
                    ' libero, sit amet suscipit ex magna consectetur ligula. '
                    'Vestibulum convallis at metus eget rhoncus. Cras ornare diam'
                    ' vel suscipit vehicula. Pellentesque efficitur tempus neque '
                    'auctor pharetra. '),
                ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ),
      );
}
