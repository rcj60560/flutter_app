import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/trip/model/home_model_new.dart';

class SaleItem extends StatelessWidget {
  final SalesBox salesBox;

  SaleItem(this.salesBox);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: <Widget>[
          Row(
            children: _bigItems(context, salesBox),
          ),
          Row(
            children: _smallItems12(context, salesBox),
          ),
          Row(
            children: _smallItems34(context, salesBox),
          ),
        ],
      ),
    );
  }
}

_smallItems12(BuildContext context, SalesBox salesBox) {
  if (salesBox == null) return;
  List<Widget> smallIcon = [];
  smallIcon.add(_getSmallItem(context, salesBox.smallCard1));
  smallIcon.add(_getSmallItem(context, salesBox.smallCard2));
  return smallIcon;
}


_smallItems34(BuildContext context, SalesBox salesBox) {
  if (salesBox == null) return;
  List<Widget> smallIcon = [];
  smallIcon.add(_getSmallItem(context, salesBox.smallCard3));
  smallIcon.add(_getSmallItem(context, salesBox.smallCard4));
  return smallIcon;
}

Widget _getSmallItem(BuildContext context, MainItem smallCard2) {
  return Expanded(
    flex: 1,
    child: Image.network(smallCard2.icon),
  );
}

_bigItems(BuildContext context, SalesBox salesBox) {
  if (salesBox == null) return null;

  List<Widget> bigCardItem = [];

  bigCardItem.add(_getBigItem(salesBox.bigCard1));
  bigCardItem.add(_getBigItem(salesBox.bigCard2));

  return bigCardItem;
}

Widget _getBigItem(MainItem bigCard) {
  return Expanded(
    flex: 1,
    child: Image.network(
      bigCard.icon,
      fit: BoxFit.contain,
    ),
  );
}
