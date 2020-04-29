
import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TravelPageState();
  }
}

class TravelPageState extends State<TravelPage>  with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("旅游"),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
