import 'dart:async';
import 'dart:convert';

import 'package:flutter_app/page/trip/model/home_model_new.dart';
import 'package:http/http.dart' as http;

const HOME_URL = 'http://www.devio.org/io/flutter_app/json/home_page.json';
/**
 * 首页接口数据
 */

class HomeDaoNew {
  static Future<HomeModelNew> fetch() async {
    final response = await http.get(HOME_URL);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return HomeModelNew.fromJson(result);
    } else {
      throw new Exception("Filed to load home_page.json");
    }
  }
}
