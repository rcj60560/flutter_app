import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/trip/model/home_model_new.dart';

class GridNavItem extends StatelessWidget {
  GridNav gridNav;

  GridNavItem(this.gridNav);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _getCategory(context),
    );
  }

  Widget _getCategory(BuildContext context) {
    if (gridNav == null) return null;
    List<Hotel> hotels = [];
    List<Widget> item = [];
    hotels.add(gridNav.hotel);
    hotels.add(gridNav.flight);
    hotels.add(gridNav.travel);

    hotels.forEach((hotels) {
      item.add(_addItems(context, hotels));
    });

    return Column(
      children: item,
    );
  }

  Widget _addItems(BuildContext context, Hotel hotels) {
    return GestureDetector(
      child: Row(
        children: <Widget>[
          _leftItem(context, hotels),
          _midItem(context, hotels),
          _rightItem(context, hotels),
        ],
      ),
    );
  }

  Widget _leftItem(BuildContext context, Hotel hotels) {
    Color startColor = Color(int.parse('0xff' + hotels.startColor));
    Color endColor = Color(int.parse('0xff' + hotels.endColor));
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [startColor, endColor])),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Image.network(hotels.mainItem.icon, width: 72, height: 121),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(hotels.mainItem.title),
            )
          ],
        ),
      ),
    );
  }

  Widget _midItem(BuildContext context, Hotel hotels) {
    Color startColor = Color(int.parse('0xff' + hotels.startColor));
    Color endColor = Color(int.parse('0xff' + hotels.endColor));
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [startColor, endColor])),
        child: Column(
          children: <Widget>[
            Text(hotels.item1.title),
            Text(hotels.item2.title),
          ],
        ),
      ),
    );
  }

  Widget _rightItem(BuildContext context, Hotel hotels) {
    Color startColor = Color(int.parse('0xff' + hotels.startColor));
    Color endColor = Color(int.parse('0xff' + hotels.endColor));
    return Expanded(
      flex: 1,
      child: Text(hotels.item4.title),
    );
  }
}
