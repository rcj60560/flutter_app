import 'package:flutter/material.dart';

/**
 * 对齐方式  主轴 交叉轴
 *
 * mainAxisAlignment
 *
 * crossAxisAlignment
 *
 */

class LMPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LMPage1State();
  }
}

class LMPage1State extends State<LMPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("控件的对其方式"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.yellow),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
//          crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.grey),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
//            height:500,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.yellow),
                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      color: Colors.green,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
