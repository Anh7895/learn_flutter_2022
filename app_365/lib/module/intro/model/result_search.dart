// To parse this JSON data, do
//
//     final resultGetProvince = resultGetProvinceFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ResultGetProvince resultGetProvinceFromJson(String str) => ResultGetProvince.fromJson(json.decode(str));

String resultGetProvinceToJson(ResultGetProvince data) => json.encode(data.toJson());

class ResultGetProvince {
  ResultGetProvince({
    required this.data,
    required this.error,
  });

  final Data data;
  final dynamic error;

  factory ResultGetProvince.fromJson(Map<String, dynamic> json) => ResultGetProvince(
    data: Data.fromJson(json["data"]),
    error: json["error"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "error": error,
  };
}

class Data {
  Data({
    required this.result,
    required this.message,
    required this.tinhthanh,
  });

  final bool result;
  final String message;
  final List<Tinhthanh> tinhthanh;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    result: json["result"],
    message: json["message"],
    tinhthanh: List<Tinhthanh>.from(json["tinhthanh"].map((x) => Tinhthanh.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "tinhthanh": List<dynamic>.from(tinhthanh.map((x) => x.toJson())),
  };
}

class Tinhthanh {
  Tinhthanh({
    required this.citId,
    required this.citName,
  });

  final String citId;
  final String citName;

  factory Tinhthanh.fromJson(Map<String, dynamic> json) => Tinhthanh(
    citId: json["cit_id"],
    citName: json["cit_name"],
  );

  Map<String, dynamic> toJson() => {
    "cit_id": citId,
    "cit_name": citName,
  };
}

