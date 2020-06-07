import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_app/model/StraggleTabModel.dart';

const straggle_tab =
    "https://www.devio.org/io/flutter_app/json/travel_page.json";

class StraggleTabDao {
  static Future<StraggleTabModel> fetch() async {
    final response = await http.get(straggle_tab);

    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var result = json.decode(utf8decoder.convert(response.bodyBytes));
      return StraggleTabModel.fromJson(result);
    } else {
      throw Exception("error");
    }
  }
}
