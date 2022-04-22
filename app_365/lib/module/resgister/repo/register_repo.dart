import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart';

import '../../../common/address.dart';
import '../../../common/services/http/api.dart';
import '../../../common/services/http/result_data.dart';

class RegisterRepo {
  Future<ResultData> getDistrict() async {
    Map<String, dynamic> header = {
      'Content-Type': 'multipart/form-data',
      'Authorization': null,
    };
    ResultData rest = await httpManager.netFetch(
      Address.searchCity,
      null,
      header,
      Options(
        method: 'get',
      ),
    );
    return rest;
  }
  Future<ResultData> registerCandidate(
    File avatar,
    String userName,
    String email,
    String phone,
    String password,
    String rePassword,
    String address,
    int city,
    int district,
    String job,
    String workplace,
    String desiredProfession,
    String day,
  ) async {
    Map<String, dynamic> header = {
      'Content-Type': 'multipart/form-data',
      'Authorization': null,
    };
    Map<String, dynamic> body = {
      'uv_avatar': await MultipartFile.fromFile(
        avatar.path,
        filename: avatar.path.split('/').last,
        contentType: MediaType(
          "image",
          "jpeg",
        ),
      ),
      'uv_username': userName,
      'uv_email': email,
      'uv_phone': phone,
      'uv_password': password,
      'uv_repassword': rePassword,
      'uv_address': address,
      'uv_city': city,
      'uv_district': district,
      'uv_cv_mn': job,
      'uv_noilv_mn': workplace,
      'uv_nn_mn': desiredProfession,
      'uv_day': day,
    };

    ResultData rest = await httpManager.netFetch(
      Address.registerCandidate,
      body,
      header,
      Options(
        method: 'post',
      ),
      isFormData: true,
    );
    return rest;
  }
}
