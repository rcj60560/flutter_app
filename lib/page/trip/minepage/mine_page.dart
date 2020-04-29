
import 'package:flutter/material.dart';
import 'package:flutter_app/page/home/home_page.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinePageState();
  }
}

class MinePageState extends State<MinePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("我的"),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
