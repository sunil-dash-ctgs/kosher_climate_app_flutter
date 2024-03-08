import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:http/http.dart' as http;

import '../apilist/ApiList.dart';
import '../apilist/SessionManager.dart';
import '../apilist/ViewDialog.dart';
import '../model/LoginResponse.dart';

class AuthController extends GetxController {

  var loginLoading = false.obs;
  Rx sessionManager = SessionManager().obs;
  Rx packageInfo = PackageInfo.fromPlatform().obs;
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  var appName = "", packageName = "", version = "", buildNumber = "", deviceName = "", deviceManufacturer = "",
      device = "", deviceDetails = "", deviceId = "", username = "", userPassword = "", relese_id = "";

  TextEditingController mobileNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController mobilenocontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confpasswordcontroller = TextEditingController();
  TextEditingController orgcodecontroller = TextEditingController();

  Rx<State1> state_data = State1().obs;
  Rx<LoginResponse> stateresponse = LoginResponse().obs;

  Future<void> showDeviceDetails(BuildContext context) async {

    appName = packageInfo.value.appName;
    packageName = packageInfo.value.packageName;
    version = packageInfo.value.version;
    buildNumber = packageInfo.value.buildNumber;

    //Android
    AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
    //iOS
    //IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;

    if (Platform.isAndroid) {

      deviceName = androidDeviceInfo.brand.toString();
      deviceManufacturer = androidDeviceInfo.manufacturer.toString();
      device = androidDeviceInfo.display.toString();
      relese_id = androidDeviceInfo.version.release.toString();
      deviceId = androidDeviceInfo.androidId.toString();
      //deviceDetails = "$deviceName   $device";

      print("sermobiledevide    $deviceName   $deviceManufacturer  $device  $deviceId");
      print("userdevide    $appName   $packageName  $version  $buildNumber");
      print("android alldeta   $androidDeviceInfo");

    }

    //Future.delayed( const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  Future<void> loginApi(BuildContext context) async {
    loginLoading(true);

    ViewDialog(context: context).showLoadingIndicator(
        "Register Please Wait.....", "Register Screen", context);

    Map<String, String> header = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    Map<String, String> body = {
      'mobile': mobileNoController.text.toString(),
      'password': passwordController.text.toString(),
      'versionCode': buildNumber,
      'versionName': version,
      'release': relese_id,
      'deviceName': deviceName,
      'deviceManufacturer': deviceManufacturer,
      'device_id': deviceId,
      'fcm_token': "fcm_token",
    };

    try {

      http.Response? response = await http.post(Uri.parse(ApiList.login),
          headers: header, body: jsonEncode(body));

      var jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        loginLoading(false);

        ViewDialog(context: context).hideOpenDialog();

        var loginResponse = LoginResponse.fromJson(jsonResponse);

        sessionManager.value.saveUserId(loginResponse.user!.id.toString());
        sessionManager.value.saveUserName(loginResponse.user!.name.toString());
        sessionManager.value
            .saveStateId(loginResponse.user!.state!.id.toString());
        sessionManager.value
            .saveStateName(loginResponse.user!.state!.name.toString());
        sessionManager.value
            .saveStateName(loginResponse.user!.token.toString());

        Navigator.pushNamed(context, "/languagepage");

      } else if (response.statusCode == 422) {

        loginLoading(false);

        ViewDialog(context: context).hideOpenDialog();

        String errormessage = jsonResponse["error"];
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errormessage),
          ),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    usernamecontroller.dispose();
  }
}
