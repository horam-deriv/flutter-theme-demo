import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/fonts/fonts_helper.dart';
import 'package:flutter_theme_demo/fonts/fonts_tile_widget.dart';

class FontsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<FontType> fonts = FontsHelper().themeFonts;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: fonts.length,
          itemBuilder: (BuildContext context, int index) =>
              SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            child: FontsTileWidget(styleType: fonts[index]),
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
