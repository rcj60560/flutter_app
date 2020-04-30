import 'package:flutter/material.dart';
import 'package:flutter_app/dao/home_dao.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_app/page/dao/home_dao.dart';
import 'package:flutter_app/page/home/home_page.dart';
import 'package:flutter_app/page/trip/model/home_model_new.dart';
import 'package:flutter_app/page/trip/widget/grid_nav.dart';
import 'package:flutter_app/page/trip/widget/local_nav.dart';
import 'package:flutter_app/page/trip/widget/sale_nav.dart';
import 'package:flutter_app/page/trip/widget/sub_nav.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomepageSate();
  }
}

class HomepageSate extends State<HomePage> with AutomaticKeepAliveClientMixin {
  List<BannerList> _bannerList = [];
  List<LocalNavList> _localNavList = [];
  GridNav _gridNav;
  List<SubNavList> _subNavList = [];
  SalesBox _saleBoxList;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            _banner,
            Padding(
              padding: EdgeInsets.all(5),
              child: LocalNav(_localNavList),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: GridNavItem(_gridNav),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: SubNavItem(_subNavList),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: SaleItem(_saleBoxList),
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

  void _getHomeModel() async {
    HomeModelNew homeModel = await HomeDaoNew.fetch();
    setState(() {
      _bannerList = homeModel.bannerList;
      _localNavList = homeModel.localNavList;
      _gridNav = homeModel.gridNav;
      _subNavList = homeModel.subNavList;
      _saleBoxList = homeModel.salesBox;
      print('--->');
    });
  }

  //1. 首页顶部banner
  Widget get _banner {
    return Container(
      height: 160,
      child: Swiper(
        itemCount: _bannerList.length,
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print('-----------> 跳转到其他页面');
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

  @override
  bool get wantKeepAlive => true;
}
