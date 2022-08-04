import 'dart:html';

import 'package:dio/dio.dart';

class GetCurrency {
  static Future getCurrency() async {
    try {
      Response res = await Dio().get("https://nbu.uz/en/exchange-rates/json/");
      if (res.statusCode == HttpStatus.ok) {
        print("hello");
        return res.data;
      } else {
        return "Xato uzingdda";
      }
    } catch (e) {
      return "No internet";
    }
  }
}
