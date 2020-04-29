import 'package:flutter/material.dart';
import 'package:flutter_app/page/trip/homepage/home_page.dart';
import 'package:flutter_app/page/trip/main_page.dart';
import 'package:flutter_app/page/trip/minepage/mine_page.dart';
import 'package:flutter_app/page/trip/searchpage/search_page.dart';
import 'package:flutter_app/page/trip/travelpage/travel_page.dart';

class BottomTabNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BottomTabNavigatorState();
  }
}

class BottomTabNavigatorState extends State<BottomTabNavigator> {
  int _selectedIndex = 0;
  static const List<Widget> _weightOptions = <Widget>[
    Text("home"),
    Text("search"),
    Text("trip"),
    Text("mine"),
  ];

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("trip demo"),
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MinePage(),
        ],
        physics: NeverScrollableScrollPhysics(),
//      onPageChanged: _onpageChange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text("Travel"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text("Mine"),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onitemTapped,
      ),
    );
  }

  void _onitemTapped(int index) {
    _controller.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }

//  void _onpageChange(int value) {
//    setState(() {
//      _selectedIndex = value;
//    });
//  }
}
