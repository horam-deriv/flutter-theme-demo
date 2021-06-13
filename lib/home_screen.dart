import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/color/widget/color_screen.dart';
import 'package:flutter_theme_demo/components/components_screen.dart';
import 'package:flutter_theme_demo/fonts/fonts_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: 'Colors'),
                Tab(text: 'components'),
                Tab(text: 'Fonts'),
              ],
            ),
            title: const Text('Flutter Theme Demo'),
          ),
          body: TabBarView(
            children: <Widget>[
              ColorScreen(),
              ComponentsScreen(),
              FontsScreen(),
            ],
          ),
        ),
      );
}
