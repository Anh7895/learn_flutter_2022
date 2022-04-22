import 'package:dio/dio.dart';

import '../../../common/address.dart';
import '../../../common/services/http/api.dart';
import '../../../common/services/http/result_data.dart';

class HomeRepo {
  Future<ResultData> getDataHomeCandidate(String token) async {
    Map<String, dynamic> header = {
      'Content-Type': 'multipart/form-data',
      'Authorization': null,
    };
    Map<String, dynamic> body = {
      'token': token,
    };

    ResultData rest = await httpManager.netFetch(
      Address.homeCandidate,
      body,
      header,
      Options(
        method: 'post',
      ),
    );
    return rest;
  }
}