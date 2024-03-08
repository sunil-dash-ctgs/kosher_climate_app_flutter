import 'package:shared_preferences/shared_preferences.dart';

class SessionManager{

  static String userid = "userid";
  static String username = "userid";
  static String stateid = "sataeid";
  static String statename = "statename";
  static String token = "token";

  void saveUserId(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(userid, value);
  }

  void saveUserName(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(username, value);
  }

  void saveStateId(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(stateid, value);
  }

  void saveStateName(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(statename, value);
  }
  void saveUserToken(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(token, value);
  }

  Future<String> getUserId(SharedPreferences prefs, String key) async {
    return prefs.getString(userid) ?? "";
  }
  Future<String> getUserName(SharedPreferences prefs, String key) async {
    return prefs.getString(username) ?? "";
  }
  Future<String> getStateId(SharedPreferences prefs, String key) async {
    return prefs.getString(stateid) ?? "";
  }
  Future<String> getstateName(SharedPreferences prefs, String key) async {
    return prefs.getString(statename) ?? "";
  }
  Future<String> getToken(SharedPreferences prefs, String key) async {
    return prefs.getString(token) ?? "";
  }

}