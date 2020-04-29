import 'package:flutter_app/page/trip/model/home_model_entity.dart';

homeModelEntityFromJson(HomeModelEntity data, Map<String, dynamic> json) {
	if (json['config'] != null) {
		data.config = new HomeModelConfig().fromJson(json['config']);
	}
	if (json['bannerList'] != null) {
		data.bannerList = new List<HomeModelBannerList>();
		(json['bannerList'] as List).forEach((v) {
			data.bannerList.add(new HomeModelBannerList().fromJson(v));
		});
	}
	if (json['localNavList'] != null) {
		data.localNavList = new List<HomeModelLocalNavList>();
		(json['localNavList'] as List).forEach((v) {
			data.localNavList.add(new HomeModelLocalNavList().fromJson(v));
		});
	}
	if (json['gridNav'] != null) {
		data.gridNav = new HomeModelGridNav().fromJson(json['gridNav']);
	}
	if (json['subNavList'] != null) {
		data.subNavList = new List<HomeModelSubNavList>();
		(json['subNavList'] as List).forEach((v) {
			data.subNavList.add(new HomeModelSubNavList().fromJson(v));
		});
	}
	if (json['salesBox'] != null) {
		data.salesBox = new HomeModelSalesBox().fromJson(json['salesBox']);
	}
	return data;
}

Map<String, dynamic> homeModelEntityToJson(HomeModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.config != null) {
		data['config'] = entity.config.toJson();
	}
	if (entity.bannerList != null) {
		data['bannerList'] =  entity.bannerList.map((v) => v.toJson()).toList();
	}
	if (entity.localNavList != null) {
		data['localNavList'] =  entity.localNavList.map((v) => v.toJson()).toList();
	}
	if (entity.gridNav != null) {
		data['gridNav'] = entity.gridNav.toJson();
	}
	if (entity.subNavList != null) {
		data['subNavList'] =  entity.subNavList.map((v) => v.toJson()).toList();
	}
	if (entity.salesBox != null) {
		data['salesBox'] = entity.salesBox.toJson();
	}
	return data;
}

homeModelConfigFromJson(HomeModelConfig data, Map<String, dynamic> json) {
	if (json['searchUrl'] != null) {
		data.searchUrl = json['searchUrl']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelConfigToJson(HomeModelConfig entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['searchUrl'] = entity.searchUrl;
	return data;
}

homeModelBannerListFromJson(HomeModelBannerList data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelBannerListToJson(HomeModelBannerList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	return data;
}

homeModelLocalNavListFromJson(HomeModelLocalNavList data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelLocalNavListToJson(HomeModelLocalNavList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavFromJson(HomeModelGridNav data, Map<String, dynamic> json) {
	if (json['hotel'] != null) {
		data.hotel = new HomeModelGridNavHotel().fromJson(json['hotel']);
	}
	if (json['flight'] != null) {
		data.flight = new HomeModelGridNavFlight().fromJson(json['flight']);
	}
	if (json['travel'] != null) {
		data.travel = new HomeModelGridNavTravel().fromJson(json['travel']);
	}
	return data;
}

Map<String, dynamic> homeModelGridNavToJson(HomeModelGridNav entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.hotel != null) {
		data['hotel'] = entity.hotel.toJson();
	}
	if (entity.flight != null) {
		data['flight'] = entity.flight.toJson();
	}
	if (entity.travel != null) {
		data['travel'] = entity.travel.toJson();
	}
	return data;
}

homeModelGridNavHotelFromJson(HomeModelGridNavHotel data, Map<String, dynamic> json) {
	if (json['startColor'] != null) {
		data.startColor = json['startColor']?.toString();
	}
	if (json['endColor'] != null) {
		data.endColor = json['endColor']?.toString();
	}
	if (json['mainItem'] != null) {
		data.mainItem = new HomeModelGridNavHotelMainItem().fromJson(json['mainItem']);
	}
	if (json['item1'] != null) {
		data.item1 = new HomeModelGridNavHotelItem1().fromJson(json['item1']);
	}
	if (json['item2'] != null) {
		data.item2 = new HomeModelGridNavHotelItem2().fromJson(json['item2']);
	}
	if (json['item3'] != null) {
		data.item3 = new HomeModelGridNavHotelItem3().fromJson(json['item3']);
	}
	if (json['item4'] != null) {
		data.item4 = new HomeModelGridNavHotelItem4().fromJson(json['item4']);
	}
	return data;
}

Map<String, dynamic> homeModelGridNavHotelToJson(HomeModelGridNavHotel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['startColor'] = entity.startColor;
	data['endColor'] = entity.endColor;
	if (entity.mainItem != null) {
		data['mainItem'] = entity.mainItem.toJson();
	}
	if (entity.item1 != null) {
		data['item1'] = entity.item1.toJson();
	}
	if (entity.item2 != null) {
		data['item2'] = entity.item2.toJson();
	}
	if (entity.item3 != null) {
		data['item3'] = entity.item3.toJson();
	}
	if (entity.item4 != null) {
		data['item4'] = entity.item4.toJson();
	}
	return data;
}

homeModelGridNavHotelMainItemFromJson(HomeModelGridNavHotelMainItem data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelGridNavHotelMainItemToJson(HomeModelGridNavHotelMainItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	return data;
}

homeModelGridNavHotelItem1FromJson(HomeModelGridNavHotelItem1 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelGridNavHotelItem1ToJson(HomeModelGridNavHotelItem1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	return data;
}

homeModelGridNavHotelItem2FromJson(HomeModelGridNavHotelItem2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelGridNavHotelItem2ToJson(HomeModelGridNavHotelItem2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}

homeModelGridNavHotelItem3FromJson(HomeModelGridNavHotelItem3 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavHotelItem3ToJson(HomeModelGridNavHotelItem3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavHotelItem4FromJson(HomeModelGridNavHotelItem4 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavHotelItem4ToJson(HomeModelGridNavHotelItem4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavFlightFromJson(HomeModelGridNavFlight data, Map<String, dynamic> json) {
	if (json['startColor'] != null) {
		data.startColor = json['startColor']?.toString();
	}
	if (json['endColor'] != null) {
		data.endColor = json['endColor']?.toString();
	}
	if (json['mainItem'] != null) {
		data.mainItem = new HomeModelGridNavFlightMainItem().fromJson(json['mainItem']);
	}
	if (json['item1'] != null) {
		data.item1 = new HomeModelGridNavFlightItem1().fromJson(json['item1']);
	}
	if (json['item2'] != null) {
		data.item2 = new HomeModelGridNavFlightItem2().fromJson(json['item2']);
	}
	if (json['item3'] != null) {
		data.item3 = new HomeModelGridNavFlightItem3().fromJson(json['item3']);
	}
	if (json['item4'] != null) {
		data.item4 = new HomeModelGridNavFlightItem4().fromJson(json['item4']);
	}
	return data;
}

Map<String, dynamic> homeModelGridNavFlightToJson(HomeModelGridNavFlight entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['startColor'] = entity.startColor;
	data['endColor'] = entity.endColor;
	if (entity.mainItem != null) {
		data['mainItem'] = entity.mainItem.toJson();
	}
	if (entity.item1 != null) {
		data['item1'] = entity.item1.toJson();
	}
	if (entity.item2 != null) {
		data['item2'] = entity.item2.toJson();
	}
	if (entity.item3 != null) {
		data['item3'] = entity.item3.toJson();
	}
	if (entity.item4 != null) {
		data['item4'] = entity.item4.toJson();
	}
	return data;
}

homeModelGridNavFlightMainItemFromJson(HomeModelGridNavFlightMainItem data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelGridNavFlightMainItemToJson(HomeModelGridNavFlightMainItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	return data;
}

homeModelGridNavFlightItem1FromJson(HomeModelGridNavFlightItem1 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavFlightItem1ToJson(HomeModelGridNavFlightItem1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavFlightItem2FromJson(HomeModelGridNavFlightItem2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelGridNavFlightItem2ToJson(HomeModelGridNavFlightItem2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}

homeModelGridNavFlightItem3FromJson(HomeModelGridNavFlightItem3 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavFlightItem3ToJson(HomeModelGridNavFlightItem3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavFlightItem4FromJson(HomeModelGridNavFlightItem4 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavFlightItem4ToJson(HomeModelGridNavFlightItem4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavTravelFromJson(HomeModelGridNavTravel data, Map<String, dynamic> json) {
	if (json['startColor'] != null) {
		data.startColor = json['startColor']?.toString();
	}
	if (json['endColor'] != null) {
		data.endColor = json['endColor']?.toString();
	}
	if (json['mainItem'] != null) {
		data.mainItem = new HomeModelGridNavTravelMainItem().fromJson(json['mainItem']);
	}
	if (json['item1'] != null) {
		data.item1 = new HomeModelGridNavTravelItem1().fromJson(json['item1']);
	}
	if (json['item2'] != null) {
		data.item2 = new HomeModelGridNavTravelItem2().fromJson(json['item2']);
	}
	if (json['item3'] != null) {
		data.item3 = new HomeModelGridNavTravelItem3().fromJson(json['item3']);
	}
	if (json['item4'] != null) {
		data.item4 = new HomeModelGridNavTravelItem4().fromJson(json['item4']);
	}
	return data;
}

Map<String, dynamic> homeModelGridNavTravelToJson(HomeModelGridNavTravel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['startColor'] = entity.startColor;
	data['endColor'] = entity.endColor;
	if (entity.mainItem != null) {
		data['mainItem'] = entity.mainItem.toJson();
	}
	if (entity.item1 != null) {
		data['item1'] = entity.item1.toJson();
	}
	if (entity.item2 != null) {
		data['item2'] = entity.item2.toJson();
	}
	if (entity.item3 != null) {
		data['item3'] = entity.item3.toJson();
	}
	if (entity.item4 != null) {
		data['item4'] = entity.item4.toJson();
	}
	return data;
}

homeModelGridNavTravelMainItemFromJson(HomeModelGridNavTravelMainItem data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelGridNavTravelMainItemToJson(HomeModelGridNavTravelMainItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	data['statusBarColor'] = entity.statusBarColor;
	return data;
}

homeModelGridNavTravelItem1FromJson(HomeModelGridNavTravelItem1 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavTravelItem1ToJson(HomeModelGridNavTravelItem1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavTravelItem2FromJson(HomeModelGridNavTravelItem2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavTravelItem2ToJson(HomeModelGridNavTravelItem2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavTravelItem3FromJson(HomeModelGridNavTravelItem3 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavTravelItem3ToJson(HomeModelGridNavTravelItem3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelGridNavTravelItem4FromJson(HomeModelGridNavTravelItem4 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelGridNavTravelItem4ToJson(HomeModelGridNavTravelItem4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelSubNavListFromJson(HomeModelSubNavList data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeModelSubNavListToJson(HomeModelSubNavList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeModelSalesBoxFromJson(HomeModelSalesBox data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['moreUrl'] != null) {
		data.moreUrl = json['moreUrl']?.toString();
	}
	if (json['bigCard1'] != null) {
		data.bigCard1 = new HomeModelSalesBoxBigCard1().fromJson(json['bigCard1']);
	}
	if (json['bigCard2'] != null) {
		data.bigCard2 = new HomeModelSalesBoxBigCard2().fromJson(json['bigCard2']);
	}
	if (json['smallCard1'] != null) {
		data.smallCard1 = new HomeModelSalesBoxSmallCard1().fromJson(json['smallCard1']);
	}
	if (json['smallCard2'] != null) {
		data.smallCard2 = new HomeModelSalesBoxSmallCard2().fromJson(json['smallCard2']);
	}
	if (json['smallCard3'] != null) {
		data.smallCard3 = new HomeModelSalesBoxSmallCard3().fromJson(json['smallCard3']);
	}
	if (json['smallCard4'] != null) {
		data.smallCard4 = new HomeModelSalesBoxSmallCard4().fromJson(json['smallCard4']);
	}
	return data;
}

Map<String, dynamic> homeModelSalesBoxToJson(HomeModelSalesBox entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['moreUrl'] = entity.moreUrl;
	if (entity.bigCard1 != null) {
		data['bigCard1'] = entity.bigCard1.toJson();
	}
	if (entity.bigCard2 != null) {
		data['bigCard2'] = entity.bigCard2.toJson();
	}
	if (entity.smallCard1 != null) {
		data['smallCard1'] = entity.smallCard1.toJson();
	}
	if (entity.smallCard2 != null) {
		data['smallCard2'] = entity.smallCard2.toJson();
	}
	if (entity.smallCard3 != null) {
		data['smallCard3'] = entity.smallCard3.toJson();
	}
	if (entity.smallCard4 != null) {
		data['smallCard4'] = entity.smallCard4.toJson();
	}
	return data;
}

homeModelSalesBoxBigCard1FromJson(HomeModelSalesBoxBigCard1 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelSalesBoxBigCard1ToJson(HomeModelSalesBoxBigCard1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeModelSalesBoxBigCard2FromJson(HomeModelSalesBoxBigCard2 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelSalesBoxBigCard2ToJson(HomeModelSalesBoxBigCard2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeModelSalesBoxSmallCard1FromJson(HomeModelSalesBoxSmallCard1 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelSalesBoxSmallCard1ToJson(HomeModelSalesBoxSmallCard1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeModelSalesBoxSmallCard2FromJson(HomeModelSalesBoxSmallCard2 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelSalesBoxSmallCard2ToJson(HomeModelSalesBoxSmallCard2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeModelSalesBoxSmallCard3FromJson(HomeModelSalesBoxSmallCard3 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelSalesBoxSmallCard3ToJson(HomeModelSalesBoxSmallCard3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeModelSalesBoxSmallCard4FromJson(HomeModelSalesBoxSmallCard4 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeModelSalesBoxSmallCard4ToJson(HomeModelSalesBoxSmallCard4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}