
import 'package:flutter/material.dart';
import 'package:flutter_app/model/TravelBean.dart';

class DetailPage1 extends StatefulWidget{
  TravelBean bean;
  DetailPage1(this.bean);

  @override
  State<StatefulWidget> createState() {
    return new DetailPage1State();
  }

}

class DetailPage1State extends State<DetailPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("fdsf"),);
  }
}