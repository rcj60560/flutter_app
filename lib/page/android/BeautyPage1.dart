import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/model/TravelBean.dart';

import 'DetailPage1.dart';

class BeautyPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BeautyPage1State();
  }
}

class BeautyPage1State extends State<BeautyPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("精美UI"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Travel Blog",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 17, color: Colors.redAccent),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: MostPopular(),
            ),
          )
        ],
      ),
    );
  }
}

class MostPopular extends StatelessWidget {
  List<TravelBean> _lsit = TravelBean.getMostPopularBean();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15), //水平方向位移
        itemCount: _lsit.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var bean = _lsit[index];
          return Hero(
            tag: bean.url,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 30, right: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DetailPage1(bean);
                      }));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        bean.url,
                        width: MediaQuery.of(context).size.width / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class TravelWidget extends StatelessWidget {
  List<TravelBean> _list = TravelBean.generateTravelBean();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: PageController(viewportFraction: 0.9),
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var bean = _list[index];
          return Hero(
            tag: bean.url,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 30, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      bean.url,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                        color: Colors.transparent,
                        child: Text(
                          bean.name,
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ),
                      Text(
                        bean.location,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 40,
                  child: GestureDetector(
                    onTap: () {
                      print('--->>' + index.toString());
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.arrow_forward,
                          color: Colors.white, size: 28),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
