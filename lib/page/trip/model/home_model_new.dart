class HomeModelNew {
  Config _config;
  List<BannerList> _bannerList;
  List<LocalNavList> _localNavList;
  GridNav _gridNav;
  List<SubNavList> _subNavList;
  SalesBox _salesBox;

  HomeModelNew(
      {Config config,
        List<BannerList> bannerList,
        List<LocalNavList> localNavList,
        GridNav gridNav,
        List<SubNavList> subNavList,
        SalesBox salesBox}) {
    this._config = config;
    this._bannerList = bannerList;
    this._localNavList = localNavList;
    this._gridNav = gridNav;
    this._subNavList = subNavList;
    this._salesBox = salesBox;
  }

  Config get config => _config;
  set config(Config config) => _config = config;
  List<BannerList> get bannerList => _bannerList;
  set bannerList(List<BannerList> bannerList) => _bannerList = bannerList;
  List<LocalNavList> get localNavList => _localNavList;
  set localNavList(List<LocalNavList> localNavList) =>
      _localNavList = localNavList;
  GridNav get gridNav => _gridNav;
  set gridNav(GridNav gridNav) => _gridNav = gridNav;
  List<SubNavList> get subNavList => _subNavList;
  set subNavList(List<SubNavList> subNavList) => _subNavList = subNavList;
  SalesBox get salesBox => _salesBox;
  set salesBox(SalesBox salesBox) => _salesBox = salesBox;

  HomeModelNew.fromJson(Map<String, dynamic> json) {
    _config =
    json['config'] != null ? new Config.fromJson(json['config']) : null;
    if (json['bannerList'] != null) {
      _bannerList = new List<BannerList>();
      json['bannerList'].forEach((v) {
        _bannerList.add(new BannerList.fromJson(v));
      });
    }
    if (json['localNavList'] != null) {
      _localNavList = new List<LocalNavList>();
      json['localNavList'].forEach((v) {
        _localNavList.add(new LocalNavList.fromJson(v));
      });
    }
    _gridNav =
    json['gridNav'] != null ? new GridNav.fromJson(json['gridNav']) : null;
    if (json['subNavList'] != null) {
      _subNavList = new List<SubNavList>();
      json['subNavList'].forEach((v) {
        _subNavList.add(new SubNavList.fromJson(v));
      });
    }
    _salesBox = json['salesBox'] != null
        ? new SalesBox.fromJson(json['salesBox'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._config != null) {
      data['config'] = this._config.toJson();
    }
    if (this._bannerList != null) {
      data['bannerList'] = this._bannerList.map((v) => v.toJson()).toList();
    }
    if (this._localNavList != null) {
      data['localNavList'] = this._localNavList.map((v) => v.toJson()).toList();
    }
    if (this._gridNav != null) {
      data['gridNav'] = this._gridNav.toJson();
    }
    if (this._subNavList != null) {
      data['subNavList'] = this._subNavList.map((v) => v.toJson()).toList();
    }
    if (this._salesBox != null) {
      data['salesBox'] = this._salesBox.toJson();
    }
    return data;
  }
}

class Config {
  String _searchUrl;

  Config({String searchUrl}) {
    this._searchUrl = searchUrl;
  }

  String get searchUrl => _searchUrl;
  set searchUrl(String searchUrl) => _searchUrl = searchUrl;

  Config.fromJson(Map<String, dynamic> json) {
    _searchUrl = json['searchUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchUrl'] = this._searchUrl;
    return data;
  }
}

class BannerList {
  String _icon;
  String _url;

  BannerList({String icon, String url}) {
    this._icon = icon;
    this._url = url;
  }

  String get icon => _icon;
  set icon(String icon) => _icon = icon;
  String get url => _url;
  set url(String url) => _url = url;

  BannerList.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['url'] = this._url;
    return data;
  }
}

class LocalNavList {
  String _icon;
  String _title;
  String _url;
  String _statusBarColor;
  bool _hideAppBar;

  LocalNavList(
      {String icon,
        String title,
        String url,
        String statusBarColor,
        bool hideAppBar}) {
    this._icon = icon;
    this._title = title;
    this._url = url;
    this._statusBarColor = statusBarColor;
    this._hideAppBar = hideAppBar;
  }

  String get icon => _icon;
  set icon(String icon) => _icon = icon;
  String get title => _title;
  set title(String title) => _title = title;
  String get url => _url;
  set url(String url) => _url = url;
  String get statusBarColor => _statusBarColor;
  set statusBarColor(String statusBarColor) => _statusBarColor = statusBarColor;
  bool get hideAppBar => _hideAppBar;
  set hideAppBar(bool hideAppBar) => _hideAppBar = hideAppBar;

  LocalNavList.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _title = json['title'];
    _url = json['url'];
    _statusBarColor = json['statusBarColor'];
    _hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['title'] = this._title;
    data['url'] = this._url;
    data['statusBarColor'] = this._statusBarColor;
    data['hideAppBar'] = this._hideAppBar;
    return data;
  }
}

class GridNav {
  Hotel _hotel;
  Hotel _flight;
  Hotel _travel;

  GridNav({Hotel hotel, Hotel flight, Hotel travel}) {
    this._hotel = hotel;
    this._flight = flight;
    this._travel = travel;
  }

  Hotel get hotel => _hotel;
  set hotel(Hotel hotel) => _hotel = hotel;
  Hotel get flight => _flight;
  set flight(Hotel flight) => _flight = flight;
  Hotel get travel => _travel;
  set travel(Hotel travel) => _travel = travel;

  GridNav.fromJson(Map<String, dynamic> json) {
    _hotel = json['hotel'] != null ? new Hotel.fromJson(json['hotel']) : null;
    _flight =
    json['flight'] != null ? new Hotel.fromJson(json['flight']) : null;
    _travel =
    json['travel'] != null ? new Hotel.fromJson(json['travel']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._hotel != null) {
      data['hotel'] = this._hotel.toJson();
    }
    if (this._flight != null) {
      data['flight'] = this._flight.toJson();
    }
    if (this._travel != null) {
      data['travel'] = this._travel.toJson();
    }
    return data;
  }
}

class Hotel {
  String _startColor;
  String _endColor;
  LocalNavList _mainItem;
  Item3 _item1;
  Item1 _item2;
  Item3 _item3;
  Item3 _item4;

  Hotel(
      {String startColor,
        String endColor,
        LocalNavList mainItem,
        Item3 item1,
        Item1 item2,
        Item3 item3,
        Item3 item4}) {
    this._startColor = startColor;
    this._endColor = endColor;
    this._mainItem = mainItem;
    this._item1 = item1;
    this._item2 = item2;
    this._item3 = item3;
    this._item4 = item4;
  }

  String get startColor => _startColor;
  set startColor(String startColor) => _startColor = startColor;
  String get endColor => _endColor;
  set endColor(String endColor) => _endColor = endColor;
  LocalNavList get mainItem => _mainItem;
  set mainItem(LocalNavList mainItem) => _mainItem = mainItem;
  Item3 get item1 => _item1;
  set item1(Item3 item1) => _item1 = item1;
  Item1 get item2 => _item2;
  set item2(Item1 item2) => _item2 = item2;
  Item3 get item3 => _item3;
  set item3(Item3 item3) => _item3 = item3;
  Item3 get item4 => _item4;
  set item4(Item3 item4) => _item4 = item4;

  Hotel.fromJson(Map<String, dynamic> json) {
    _startColor = json['startColor'];
    _endColor = json['endColor'];
    _mainItem = json['mainItem'] != null
        ? new LocalNavList.fromJson(json['mainItem'])
        : null;
    _item1 = json['item1'] != null ? new Item3.fromJson(json['item1']) : null;
    _item2 = json['item2'] != null ? new Item1.fromJson(json['item2']) : null;
    _item3 = json['item3'] != null ? new Item3.fromJson(json['item3']) : null;
    _item4 = json['item4'] != null ? new Item3.fromJson(json['item4']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this._startColor;
    data['endColor'] = this._endColor;
    if (this._mainItem != null) {
      data['mainItem'] = this._mainItem.toJson();
    }
    if (this._item1 != null) {
      data['item1'] = this._item1.toJson();
    }
    if (this._item2 != null) {
      data['item2'] = this._item2.toJson();
    }
    if (this._item3 != null) {
      data['item3'] = this._item3.toJson();
    }
    if (this._item4 != null) {
      data['item4'] = this._item4.toJson();
    }
    return data;
  }
}

class MainItem {
  String _title;
  String _icon;
  String _url;
  String _statusBarColor;

  MainItem({String title, String icon, String url, String statusBarColor}) {
    this._title = title;
    this._icon = icon;
    this._url = url;
    this._statusBarColor = statusBarColor;
  }

  String get title => _title;
  set title(String title) => _title = title;
  String get icon => _icon;
  set icon(String icon) => _icon = icon;
  String get url => _url;
  set url(String url) => _url = url;
  String get statusBarColor => _statusBarColor;
  set statusBarColor(String statusBarColor) => _statusBarColor = statusBarColor;

  MainItem.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _icon = json['icon'];
    _url = json['url'];
    _statusBarColor = json['statusBarColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['icon'] = this._icon;
    data['url'] = this._url;
    data['statusBarColor'] = this._statusBarColor;
    return data;
  }
}

class Item1 {
  String _title;
  String _url;
  String _statusBarColor;

  Item1({String title, String url, String statusBarColor}) {
    this._title = title;
    this._url = url;
    this._statusBarColor = statusBarColor;
  }

  String get title => _title;
  set title(String title) => _title = title;
  String get url => _url;
  set url(String url) => _url = url;
  String get statusBarColor => _statusBarColor;
  set statusBarColor(String statusBarColor) => _statusBarColor = statusBarColor;

  Item1.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _url = json['url'];
    _statusBarColor = json['statusBarColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['url'] = this._url;
    data['statusBarColor'] = this._statusBarColor;
    return data;
  }
}

class Item2 {
  String _title;
  String _url;

  Item2({String title, String url}) {
    this._title = title;
    this._url = url;
  }

  String get title => _title;
  set title(String title) => _title = title;
  String get url => _url;
  set url(String url) => _url = url;

  Item2.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['url'] = this._url;
    return data;
  }
}

class Item3 {
  String _title;
  String _url;
  bool _hideAppBar;

  Item3({String title, String url, bool hideAppBar}) {
    this._title = title;
    this._url = url;
    this._hideAppBar = hideAppBar;
  }

  String get title => _title;
  set title(String title) => _title = title;
  String get url => _url;
  set url(String url) => _url = url;
  bool get hideAppBar => _hideAppBar;
  set hideAppBar(bool hideAppBar) => _hideAppBar = hideAppBar;

  Item3.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _url = json['url'];
    _hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['url'] = this._url;
    data['hideAppBar'] = this._hideAppBar;
    return data;
  }
}

class SubNavList {
  String _icon;
  String _title;
  String _url;
  bool _hideAppBar;

  SubNavList({String icon, String title, String url, bool hideAppBar}) {
    this._icon = icon;
    this._title = title;
    this._url = url;
    this._hideAppBar = hideAppBar;
  }

  String get icon => _icon;
  set icon(String icon) => _icon = icon;
  String get title => _title;
  set title(String title) => _title = title;
  String get url => _url;
  set url(String url) => _url = url;
  bool get hideAppBar => _hideAppBar;
  set hideAppBar(bool hideAppBar) => _hideAppBar = hideAppBar;

  SubNavList.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _title = json['title'];
    _url = json['url'];
    _hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['title'] = this._title;
    data['url'] = this._url;
    data['hideAppBar'] = this._hideAppBar;
    return data;
  }
}

class SalesBox {
  String _icon;
  String _moreUrl;
  MainItem _bigCard1;
  MainItem _bigCard2;
  MainItem _smallCard1;
  MainItem _smallCard2;
  MainItem _smallCard3;
  MainItem _smallCard4;

  SalesBox(
      {String icon,
        String moreUrl,
        MainItem bigCard1,
        MainItem bigCard2,
        MainItem smallCard1,
        MainItem smallCard2,
        MainItem smallCard3,
        MainItem smallCard4}) {
    this._icon = icon;
    this._moreUrl = moreUrl;
    this._bigCard1 = bigCard1;
    this._bigCard2 = bigCard2;
    this._smallCard1 = smallCard1;
    this._smallCard2 = smallCard2;
    this._smallCard3 = smallCard3;
    this._smallCard4 = smallCard4;
  }

  String get icon => _icon;
  set icon(String icon) => _icon = icon;
  String get moreUrl => _moreUrl;
  set moreUrl(String moreUrl) => _moreUrl = moreUrl;
  MainItem get bigCard1 => _bigCard1;
  set bigCard1(MainItem bigCard1) => _bigCard1 = bigCard1;
  MainItem get bigCard2 => _bigCard2;
  set bigCard2(MainItem bigCard2) => _bigCard2 = bigCard2;
  MainItem get smallCard1 => _smallCard1;
  set smallCard1(MainItem smallCard1) => _smallCard1 = smallCard1;
  MainItem get smallCard2 => _smallCard2;
  set smallCard2(MainItem smallCard2) => _smallCard2 = smallCard2;
  MainItem get smallCard3 => _smallCard3;
  set smallCard3(MainItem smallCard3) => _smallCard3 = smallCard3;
  MainItem get smallCard4 => _smallCard4;
  set smallCard4(MainItem smallCard4) => _smallCard4 = smallCard4;

  SalesBox.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _moreUrl = json['moreUrl'];
    _bigCard1 = json['bigCard1'] != null
        ? new MainItem.fromJson(json['bigCard1'])
        : null;
    _bigCard2 = json['bigCard2'] != null
        ? new MainItem.fromJson(json['bigCard2'])
        : null;
    _smallCard1 = json['smallCard1'] != null
        ? new MainItem.fromJson(json['smallCard1'])
        : null;
    _smallCard2 = json['smallCard2'] != null
        ? new MainItem.fromJson(json['smallCard2'])
        : null;
    _smallCard3 = json['smallCard3'] != null
        ? new MainItem.fromJson(json['smallCard3'])
        : null;
    _smallCard4 = json['smallCard4'] != null
        ? new MainItem.fromJson(json['smallCard4'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['moreUrl'] = this._moreUrl;
    if (this._bigCard1 != null) {
      data['bigCard1'] = this._bigCard1.toJson();
    }
    if (this._bigCard2 != null) {
      data['bigCard2'] = this._bigCard2.toJson();
    }
    if (this._smallCard1 != null) {
      data['smallCard1'] = this._smallCard1.toJson();
    }
    if (this._smallCard2 != null) {
      data['smallCard2'] = this._smallCard2.toJson();
    }
    if (this._smallCard3 != null) {
      data['smallCard3'] = this._smallCard3.toJson();
    }
    if (this._smallCard4 != null) {
      data['smallCard4'] = this._smallCard4.toJson();
    }
    return data;
  }
}
