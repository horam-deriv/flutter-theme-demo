import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/color/model/presentation_color.dart';
import 'package:flutter_theme_demo/color/widget/color_avatar.dart';
import 'package:flutter_theme_demo/color/widget/color_code_widget.dart';
import 'package:flutter_theme_demo/color_helper.dart';

///
class ColorScreen extends StatefulWidget {
  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.32),
        child: _buildContent(),
      );

  Widget _buildContent() => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSectionTitle('ColorScheme fields', context),
            _buildThemeMode(isColorSchemeInfo: true),
            const Divider(),
            _buildColorsList(isColorSchemeInfo: true),
            const Divider(),
            _buildSectionTitle('Other Color fields', context),
            _buildThemeMode(),
            const Divider(),
            _buildColorsList(),
          ],
        ),
      );

  Widget _buildSectionTitle(String title, BuildContext context) => Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      );

  Widget _buildThemeMode({bool isColorSchemeInfo = false}) {
    final String modeName =
        _isThemeModeDark(context, isColorSchemeInfo) ? 'Dark' : 'Light';

    final Color color = _isThemeModeDark(context, isColorSchemeInfo)
        ? Colors.grey.shade300
        : Colors.white70;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          ColorAvatar(
            name: modeName,
            avatarColor: color,
          ),
          const SizedBox(width: 16),
          const Text('Theme mode'),
          const Spacer(),
          Text(modeName),
        ],
      ),
    );
  }

  bool _isThemeModeDark(BuildContext context, bool isColorSchemeInfo) =>
      isColorSchemeInfo
          ? Theme.of(context).colorScheme.brightness == Brightness.dark
          : Theme.of(context).brightness == Brightness.dark;

  Widget _buildColorsList({bool isColorSchemeInfo = false}) {
    final ColorHelper helper = ColorHelper(context);
    final List<PresentationColor> colors =
        isColorSchemeInfo ? helper.schemeColors : helper.themeColors;
    return ListView.separated(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) =>
          _buildColorsListItem(colors, index),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  Widget _buildColorsListItem(List<PresentationColor> colors, int index) =>
      Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            ColorAvatar(
              name: colors[index].name,
              avatarColor: colors[index].color,
            ),
            const SizedBox(width: 16),
            Text(colors[index].name),
            const Spacer(),
            _buildFirstColumnColorData(colors[index]),
            const SizedBox(width: 16),
            _buildSecondColumnColorData(colors[index]),
          ],
        ),
      );

  Widget _buildFirstColumnColorData(PresentationColor color) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ColorCodeWidget(code: 'R', value: color.red),
          const SizedBox(height: 8),
          ColorCodeWidget(code: 'B', value: color.blue),
        ],
      );

  Widget _buildSecondColumnColorData(PresentationColor color) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ColorCodeWidget(code: 'G', value: color.green),
          const SizedBox(height: 8),
          ColorCodeWidget(code: 'A', value: color.alpha),
        ],
      );
}
