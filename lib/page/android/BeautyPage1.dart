import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BeautyPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BeautyPage1State();
  }
}

class BeautyPage1State extends State<BeautyPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("精美UI"),
      ),
      body: Container(
        child: Text("test"),
      ),
    );
  }
}
