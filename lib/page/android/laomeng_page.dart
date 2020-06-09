import 'package:flutter/material.dart';

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
          ],
        ),
//        child: Column(
//          children: <Widget>[
//            Container(
//              height: 200,
//              decoration: BoxDecoration(color: Colors.yellow),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
////          crossAxisAlignment: CrossAxisAlignment.end,
//                children: <Widget>[
//                  Container(
//                    height: 50,
//                    width: 100,
//                    color: Colors.red,
//                  ),
//                  Container(
//                    height: 50,
//                    width: 100,
//                    color: Colors.green,
//                  ),
//                  Container(
//                    height: 50,
//                    width: 100,
//                    color: Colors.blue,
//                  ),
//                ],
//              ),
//            ),
//            Container(
//              height: 200,
//              decoration: BoxDecoration(color: Colors.grey),
//              child: Row(
////              mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.end,
//                children: <Widget>[
//                  Container(
//                    height: 50,
//                    width: 100,
//                    color: Colors.red,
//                  ),
//                  Container(
//                    height: 100,
//                    width: 100,
//                    color: Colors.green,
//                  ),
//                  Container(
//                    height: 150,
//                    width: 100,
//                    color: Colors.blue,
//                  ),
//                ],
//              ),
//            ),
//            Container(
////            height:500,
//                width: double.infinity,
//                decoration: BoxDecoration(color: Colors.yellow),
//                child: Column(
////                  mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.end,
//                  children: <Widget>[
//                    Container(
//                      height: 50,
//                      width: 100,
//                      color: Colors.red,
//                    ),
//                    Container(
//                      height: 100,
//                      width: 100,
//                      color: Colors.blue,
//                    ),
//                    Container(
//                      height: 150,
//                      width: 100,
//                      color: Colors.green,
//                    ),
//                  ],
//                ))
//          ],
//        ),
      ),
    );
  }
}
