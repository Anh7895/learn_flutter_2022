// To parse this JSON data, do
//
//     final resultLogin = resultLoginFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ResultLogin resultLoginFromJson(String str) => ResultLogin.fromJson(json.decode(str));

String resultLoginToJson(ResultLogin data) => json.encode(data.toJson());

class ResultLogin {
  ResultLogin({
    required this.data,
    required this.error,
  });

  final Data data;
  final Error error;

  factory ResultLogin.fromJson(Map<String, dynamic> json) => ResultLogin(
    data: Data.fromJson(json["data"] ?? {}),
    error: Error.fromJson(json["error"]?? {}),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "error": error.toJson(),
  };
}

class Data {
  Data({
    required this.result,
    required this.message,
    required this.token,
  });

  final bool result;
  final String message;
  final String token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    result: json["result"] ?? false,
    message: json["message"] ?? '',
    token: json["token"]?? '',
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "token": token,
  };
}

class Error {
  Error({
    required this.code,
    required this.message,
  });

  final int code;
  final String message;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    code: json["code"] ?? 0,
    message: json["message"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
  };
}
