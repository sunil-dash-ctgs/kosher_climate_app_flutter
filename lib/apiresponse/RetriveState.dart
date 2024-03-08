import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:kosher_climate_app_flutter/apilist/ApiList.dart';

class RetriveState{

  Future<http.Response?> getCountries() async {
    http.Response? response;
    try {
      var url = Uri.parse(ApiList.state);
      response = await http.get(url);
      //  return response;
    } catch (e) {
      log(e.toString());
    }
    return response;
  }
}