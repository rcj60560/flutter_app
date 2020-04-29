
import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/home_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomepageSate();
  }
}

class HomepageSate extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text("内容"),
      ),
    );
  }
}
