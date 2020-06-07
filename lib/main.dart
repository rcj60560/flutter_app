import 'package:flutter/material.dart';
import 'package:flutter_app/navigator/tabnavigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TabNavigator(),
    );
  }
}
