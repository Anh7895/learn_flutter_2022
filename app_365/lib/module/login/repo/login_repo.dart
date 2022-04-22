import 'package:dio/dio.dart';

import '../../../common/address.dart';
import '../../../common/services/http/api.dart';
import '../../../common/services/http/result_data.dart';

class LoginRepo {
  Future<ResultData> loginCandidate(String email, String password) async {
    Map<String, dynamic> header = {
      'Content-Type': 'multipart/form-data',
      'Authorization': null,
    };
    Map<String, dynamic> body = {
      'uv_email': email,
      'uv_password': password,
    };

    ResultData rest = await httpManager.netFetch(
      Address.loginCandidate,
      body,
      header,
      Options(
        method: 'post',
      ),
    );
    return rest;
  }
  Future<ResultData> loginEmployer(String email, String password) async {
    Map<String, dynamic> header = {
      'Content-Type': 'multipart/form-data',
      'Authorization': null,
    };
    Map<String, dynamic> body = {
      'uv_email': email,
      'uv_password': password,
    };

    ResultData rest = await httpManager.netFetch(
      Address.loginEmployer,
      body,
      header,
      Options(
        method: 'post',
      ),
    );
    return rest;
  }
}