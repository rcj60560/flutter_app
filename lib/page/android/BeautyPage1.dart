import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/model/TravelBean.dart';

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
        ],
      ),
    );
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
          return GestureDetector(
            onTap: () {
              print('=----->' + index.toString());
            },
            child: Hero(
              tag: bean.url,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        bean.url,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                          color: Colors.transparent,
                          child: Text(
                            bean.name,
                            style:
                            TextStyle(color: Colors.black54, fontSize: 18),
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
                    bottom: 0,
                    right: 30,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.arrow_forward),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
