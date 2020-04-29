import 'package:flutter/material.dart';
import 'package:flutter_app/page/trip/navigator/bottom_tab_navigator.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "trip app",
      theme: ThemeData(primaryColor: Colors.blue),
      home: BottomTabNavigator(),
    );
  }
}
