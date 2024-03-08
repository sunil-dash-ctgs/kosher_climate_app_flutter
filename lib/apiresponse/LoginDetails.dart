
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:kosher_climate_app_flutter/apilist/ApiList.dart';

class LoginDetails {

  Future<http.Response?> loginApi(mobile, password, versionCode, versionName,
      release, deviceName, deviceManufacturer, device_id, fcm_token) async {

    http.Response? response;

    try {
      response = await http.post(
          Uri.parse(ApiList.login),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'mobile': mobile,
            'password': password,
            'versionCode': versionCode,
            'versionName': versionName,
            'release': release,
            'deviceName': deviceName,
            'deviceManufacturer': deviceManufacturer,
            'device_id': device_id,
            'fcm_token': fcm_token,

          }));
    } catch (e) {
      log(e.toString());
    }
    return response;
  }
}