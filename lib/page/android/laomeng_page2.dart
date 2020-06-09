import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 水平指示器
 *
 * 圆形指示器
 *
 *
 */
class LMPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LMPage2State();
  }
}

class LMPage2State extends State<LMPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("指示器"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(),
              child: LinearProgressIndicator(
                value: 0.5,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(),
              child: CircularProgressIndicator(),
            ),
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(),
              child: CupertinoActivityIndicator(radius: 20,),
            ),


          ],
        ),
      ),
    );
  }
}
