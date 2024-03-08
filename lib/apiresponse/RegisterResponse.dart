import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:kosher_climate_app_flutter/apilist/ApiList.dart';

class RegisterResponse {

  Future<http.Response?> registerApi(name,mobile,username,password,company_code,versionCode,versionName,
      release,deviceName,deviceManufacturer,state_id,state,fcmToken) async {

    http.Response? response;

    try {
      response = await http.post(
          Uri.parse(ApiList.register),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'name': name,
            'mobile': mobile,
            'username': username,
            'password': password,
            'company_code': company_code,
            'versionCode': versionCode,
            'versionName': versionName,
            'release': release,
            'deviceName': deviceName,
            'deviceManufacturer': deviceManufacturer,
            'state_id': state_id,
            'state': state,
            'fcmToken': fcmToken,

          }));
    } catch (e) {
      log(e.toString());
    }
    return response;
  }
}