import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/trip/model/home_model_new.dart';

class SubNavItem extends StatelessWidget {
  final List<SubNavList> listData;

  SubNavItem(this.listData);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _item(context, listData, true),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _item(context, listData, false),
          )
        ],
      ),
    );
  }

  List<Widget> _item(
      BuildContext context, List<SubNavList> subNavList, bool isAbove) {
    if (subNavList == null) return null;
    List<Widget> items = [];

    subNavList.forEach((model) {
      items.add(_getItem(context, model));
    });

    int separate = (subNavList.length / 2).toInt();

    return isAbove
        ? items.sublist(0, separate)
        : items.sublist(separate, items.length);
  }

  _getItem(BuildContext context, SubNavList listData) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.network(
              listData.icon,
              width: 21,
              height: 21,
            ),
          ),
          Text(
            listData.title,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
