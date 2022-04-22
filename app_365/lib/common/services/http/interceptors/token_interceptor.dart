import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../api.dart';

class TokenInterceptor extends InterceptorsWrapper {
  String? _accessToken;

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      var responseJson = jsonDecode(response.data);
      if (responseJson['data'] != null && responseJson['data']['access_token'] != null) {
        _accessToken = responseJson['data']['access_token'];
        prefs.setString(ConstString.token, _accessToken!);
        httpManager.getAuthorization();
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    super.onRequest(options, handler);
    if (_accessToken == null) {
      var authorizationCode = await getAuthorization();
      if (authorizationCode != null) {
        _accessToken = authorizationCode;
      }
    }
    options.headers["Authorization"] = "Bearer $_accessToken";
    options.headers["content-type"] = "application/x-www-form-urlencoded";
  }

  clearAuthorization() async {
    this._accessToken = null;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(ConstString.token);
    // releaseClient();
  }

  getAuthorization() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString(ConstString.token);
    return token;
  }
}
