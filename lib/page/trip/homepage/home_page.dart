import 'package:flutter/material.dart';
import 'package:flutter_app/dao/home_dao.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_app/page/dao/home_dao.dart';
import 'package:flutter_app/page/home/home_page.dart';
import 'package:flutter_app/page/trip/model/home_model_new.dart';
import 'package:flutter_app/page/trip/widget/local_nav.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomepageSate();
  }
}

class HomepageSate extends State<HomePage> {
  List<BannerList> _bannerList = [];
  List<LocalNavList> _localNavList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            _banner,
            Padding(
              padding: EdgeInsets.all(5),
              child: LocalNav(_localNavList),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getHomeModel();
  }

  Future<Null> _getHomeModel() async {
    HomeModelNew homeModel = await HomeDaoNew.fetch();
    setState(() {
      _bannerList = homeModel.bannerList;
      _localNavList = homeModel.localNavList;
    });
    return null;
  }

  Widget get _banner {
    return Container(
      height: 160,
      child: Swiper(
        itemCount: _bannerList.length,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print('----------->');
            },
            child: Image.network(
              _bannerList[index].icon,
              fit: BoxFit.fill,
            ),
          );
        },
        pagination: SwiperPagination(
//            alignment: Alignment.bottomRight,
//            margin: EdgeInsets.only(bottom: 20.0, right: 20.0),
//            builder: SwiperPagination.fraction
            ),
      ),
    );
  }
}
