import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/trip/model/home_model_new.dart';

class GridNavItem extends StatelessWidget {
  final GridNav gridNav;

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

    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: item,
      ),
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
        height: 88,
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [startColor, endColor])),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5))),
              margin: EdgeInsets.only(bottom: 5),
              child: Image.network(
                hotels.mainItem.icon,
                width: 88,
                height: 121,
                fit: BoxFit.contain,
                alignment: AlignmentDirectional.bottomEnd,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 11),
              child: Text(
                hotels.mainItem.title,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
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
        height: 88,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [startColor, endColor])),
        child: Column(
          children: <Widget>[
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      hotels.item1.title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: 1,
            ),
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      hotels.item2.title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
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
      child: Container(
        height: 88,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [startColor, endColor])),
        child: Column(
          children: <Widget>[
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      hotels.item3.title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.white,
            ),
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  child: Center(
                    child: Text(
                      hotels.item4.title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
