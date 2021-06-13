import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Theme Demo',
        theme: ThemeData(
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomeScreen(),
      );
}