import 'package:dio/dio.dart';

import '../../../common/address.dart';
import '../../../common/services/http/api.dart';
import '../../../common/services/http/result_data.dart';

class SearchRepo {
  Future<ResultData> getDistrict(String email, String password) async {
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
}
