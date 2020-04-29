
import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/home_page.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinePageState();
  }
}

class MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("我的"),
      ),
    );
  }
}
