import 'dart:collection';

import 'package:dio/dio.dart';

import '../../utils.dart';
import 'code.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/header_interceptor.dart';
import 'interceptors/log_interceptor.dart';
import 'interceptors/response_interceptor.dart';
import 'interceptors/token_interceptor.dart';
import 'result_data.dart';

class HttpManager {
  Dio _dio = Dio();

  final TokenInterceptor _tokenInterceptors = TokenInterceptor();

  HttpManager() {
    _dio.interceptors.add(new HeaderInterceptor());

    _dio.interceptors.add(_tokenInterceptors);

    _dio.interceptors.add(new LogsInterceptor());

    _dio.interceptors.add(new ErrorInterceptor(_dio));

    _dio.interceptors.add(new ResponseInterceptor());
  }

  Future<ResultData> netFetch(url, params, Map<String, dynamic> header, Options option, {noTip = false, isFormData = false}) async {
    Map<String, dynamic> headers = HashMap();
    if (header != null) {
      headers.addAll(header);
    }

    if (option != null) {
      option.headers = headers;
    } else {
      option = Options(method: "get");
      option.headers = headers;
    }

    resultError(DioError e) async {
      Response? errorResponse;
      final internet = await Utils.checkConnectionInternet();
      print('internet :$internet');
      if (!internet) {
        Utils.showToast('Vui lòng kiểm tra kết nối mạng!');
        if (e.response != null) {
          errorResponse = e.response!;
        } else {
          // errorResponse = new Response(statusCode: 666, requestOptions: Response(requestOptions: requestOptions));
        }
        if (e.type == DioErrorType.connectTimeout || e.type == DioErrorType.receiveTimeout) {
          errorResponse!.statusCode = Code.NETWORK_TIMEOUT;
        }
      }
      print('e.response!.statusCode: ${e.response!.statusCode}');
      return ResultData(Code.errorHandleFunction(errorResponse!.statusCode, e.message, noTip), false, errorResponse.statusCode!);
    }

    Response? response;
    try {
      response = await _dio.request(url, data: isFormData ? FormData.fromMap(params) : params, options: option);
    } on DioError catch (e) {
      return resultError(e);
    }
    if (response.data is DioError) {
      return resultError(response.data);
    }
    return ResultData(response.data, true, response.statusCode!);
  }

  clearAuthorization() {
    _tokenInterceptors.clearAuthorization();
  }

  getAuthorization() async {
    return _tokenInterceptors.getAuthorization();
  }
}

final HttpManager httpManager = HttpManager();
