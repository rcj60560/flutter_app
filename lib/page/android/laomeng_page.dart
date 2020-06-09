import 'package:flutter/material.dart';

import 'laomeng_page2.dart';
import 'lmpage1.dart';

class LaoMengFlutter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LaoMengFlutterState();
  }
}

class LaoMengFlutterState extends State<LaoMengFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("老孟 flutter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LMPage1()));
                },
                child: Text("对齐方式"),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LMPage2()));
                },
                child: Text("指示器"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
