import 'dart:convert';

ResultRegister resultRegisterFromJson(String str) => ResultRegister.fromJson(json.decode(str));

String resultRegisterToJson(ResultRegister data) => json.encode(data.toJson());

class ResultRegister {
  ResultRegister({
    required this.data,
     required this.error,
  });

  final Data data;
  final Error error;

  factory ResultRegister.fromJson(Map<String, dynamic> json) => ResultRegister(
    data: Data.fromJson(json["data"] ?? {}),
    error: Error.fromJson(json["error"] ?? {}),
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
    required this.userInfo,
  });

  final bool result;
  final String message;
  final UserInfo userInfo;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    result: json["result"] ?? false,
    message: json["message"] ?? '',
    userInfo: UserInfo.fromJson(json["user_info"] ?? {}),
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "user_info": userInfo.toJson(),
  };
}

class UserInfo {
  UserInfo({
    required this.token,
    required this.otp,
    required this.id,
  });

  final String token;
  final int otp;
  final String id;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    token: json["token"] ?? '',
    otp: json["otp"] ?? 0,
    id: json["id"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "otp": otp,
    "id": id,
  };
}

class Error {
  Error({
    required this.code,
    required this.message,
    required this.avatar,
  });

  final int code;
  final String message;
  final String avatar;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
    code: json["code"] ?? 0,
    message: json["message"] ?? '',
    avatar: json["avatar"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
    "avatar": avatar,
  };
}
