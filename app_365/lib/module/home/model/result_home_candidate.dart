
import 'dart:convert';

ResultHomeCandidate resultHomeCandidateFromJson(String str) => ResultHomeCandidate.fromJson(json.decode(str));

String resultHomeCandidateToJson(ResultHomeCandidate data) => json.encode(data.toJson());

class ResultHomeCandidate {
  ResultHomeCandidate({
    required this.data,
    required this.error,
  });

  final Data data;
  final Error error;

  factory ResultHomeCandidate.fromJson(Map<String, dynamic> json) => ResultHomeCandidate(
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
    required this.viecLam,
  });

  final bool result;
  final String message;
  final ListJobs viecLam;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    result: json["result"] ?? false,
    message: json["message"] ?? '',
    viecLam: ListJobs.fromJson(json["viec_lam"] ?? {}),
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "viec_lam": viecLam.toJson(),
  };
}

class ListJobs {
  ListJobs({
    required this.vieclamNew,
    required this.loaiVieclam,
    required this.vieclamCity,
    required this.vieclamSalary,
    required this.vieclamNn,
  });

  final List<Vieclam> vieclamNew;
  final List<LoaiVieclam> loaiVieclam;
  final List<VieclamCity> vieclamCity;
  final List<VieclamNn> vieclamNn;
  final List<Vieclam> vieclamSalary;

  factory ListJobs.fromJson(Map<String, dynamic> json) => ListJobs(
    vieclamNew: json["vieclam_new"] == null ? [] : List<Vieclam>.from(json["vieclam_new"].map((x) => Vieclam.fromJson(x))),
    loaiVieclam: json["loai_vieclam"] == null ? [] : List<LoaiVieclam>.from(json["loai_vieclam"].map((x) => LoaiVieclam.fromJson(x))),
    vieclamCity: json["vieclam_city"] == null ? [] : List<VieclamCity>.from(json["vieclam_city"].map((x) => VieclamCity.fromJson(x))),
    vieclamSalary: json["vieclam_salary"] == null ? []  :List<Vieclam>.from(json["vieclam_salary"].map((x) => Vieclam.fromJson(x))),
    vieclamNn:json["vieclam_nn"] == null ? []: List<VieclamNn>.from(json["vieclam_nn"].map((x) => VieclamNn.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "vieclam_new": List<dynamic>.from(vieclamNew.map((x) => x.toJson())),
    "loai_vieclam": List<dynamic>.from(loaiVieclam.map((x) => x.toJson())),
    "vieclam_city": List<dynamic>.from(vieclamCity.map((x) => x.toJson())),
    "vieclam_salary": List<dynamic>.from(vieclamSalary.map((x) => x.toJson())),
    "vieclam_nn": List<dynamic>.from(vieclamNn.map((x) => x.toJson())),
  };
}

class LoaiVieclam {
  LoaiVieclam({
    required this.hinhThuc,
    required this.soLuong,
  });

  final String hinhThuc;
  final String soLuong;

  factory LoaiVieclam.fromJson(Map<String, dynamic> json) => LoaiVieclam(
    hinhThuc: json["hinh_thuc"] ?? '',
    soLuong: json["so_luong"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "hinh_thuc": hinhThuc,
    "so_luong": soLuong,
  };
}

class VieclamCity {
  VieclamCity({
    required this.idVieclam,
    required this.citName,
    required this.slVieclam,
  });

  final String idVieclam;
  final String citName;
  final String slVieclam;

  factory VieclamCity.fromJson(Map<String, dynamic> json) => VieclamCity(
    idVieclam: json["id_vieclam"] ?? '',
    citName: json["cit_name"] ?? '',
    slVieclam: json["sl_vieclam"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id_vieclam": idVieclam,
    "cit_name": citName,
    "sl_vieclam": slVieclam,
  };
}

class Vieclam {
  Vieclam({
    required this.idVieclam,
    required this.viTri,
    required this.hinhThuc,
    required this.mucLuong,
    required this.ntdAvatar,
    required this.timeCreated,
    required this.citName,
    required this.diaDiem,
    required this.ntdUsername,
  });

  final String idVieclam;
  final String viTri;
  final String hinhThuc;
  final String mucLuong;
  final String ntdAvatar;
  final String timeCreated;
  final String citName;
  final String diaDiem;
  final String ntdUsername;

  factory Vieclam.fromJson(Map<String, dynamic> json) => Vieclam(
    idVieclam: json["id_vieclam"] ?? '',
    viTri: json["vi_tri"] ?? '',
    hinhThuc: json["hinh_thuc"]?? '',
    mucLuong: json["muc_luong"]?? '',
    ntdAvatar: json["ntd_avatar"]?? '',
    timeCreated: json["time_created"]?? '',
    citName: json["cit_name"] ?? '',
    diaDiem: json["dia_diem"] ?? '',
    ntdUsername: json["ntd_username"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id_vieclam": idVieclam,
    "vi_tri": viTri,
    "hinh_thuc": hinhThuc,
    "muc_luong": mucLuong,
    "ntd_avatar": ntdAvatar,
    "time_created": timeCreated,
    "cit_name": citName,
    "dia_diem": diaDiem,
    "ntd_username": ntdUsername,
  };
}
class VieclamNn {
  VieclamNn({
    required this.idVieclam,
    required this.jcName,
    required this.slVieclam,
  });

  final String idVieclam;
  final String jcName;
  final String slVieclam;

  factory VieclamNn.fromJson(Map<String, dynamic> json) => VieclamNn(
    idVieclam: json["id_vieclam"]??'',
    jcName: json["jc_name"]??'',
    slVieclam: json["sl_vieclam"]??'',
  );

  Map<String, dynamic> toJson() => {
    "id_vieclam": idVieclam,
    "jc_name": jcName,
    "sl_vieclam": slVieclam,
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
    code: json["code"]?? 0,
    message: json["message"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
  };
}
