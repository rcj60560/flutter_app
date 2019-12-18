import 'package:flutter/material.dart';
import 'package:flutter_app/dao/straggle_tab_dao.dart';
import 'package:flutter_app/model/StraggleTabModel.dart';

class StragglePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StragglePageState();
  }
}

class StragglePageState extends State<StragglePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  List<Tabs> tabs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("瀑布流")),
        body: Column(
          children: <Widget>[
            Container(
              child: TabBar(
                  controller: _controller,
                  isScrollable: true,
                  tabs: tabs.map<Tab>((Tabs tabs) {
                    return tabs == null ? null : Tab(text: tabs.labelName);
                  }).toList(),
                  indicatorColor: Colors.red,
                  indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey),
            ),
          ],
        ));
  }

  @override
  void initState() {
    super.initState();
    StraggleTabDao.fetch().then((StraggleTabModel tabModel) {
      _controller = TabController(length: tabModel.tabs.length, vsync: this);
      setState(() {
        tabs = tabModel.tabs;
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
