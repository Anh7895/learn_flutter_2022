class GitResponse {
  List<RepoModel> items;

  GitResponse({required this.items});

  factory GitResponse.fromJson(dynamic json) {
    List<dynamic> list = json["items"];
    var result = list.map((e) => RepoModel.fromJson(e)).toList();
    return GitResponse(items: result);
  }
}

class RepoModel {
  String fullName;
  OwnerModel owner;

  RepoModel({required this.fullName, required this.owner});

  factory RepoModel.fromJson(dynamic json) {
    return RepoModel(
      fullName: json['full_name'],
      owner: OwnerModel.fromJson(json['owner']),
    );
  }
}

class OwnerModel {
  String avatarUrl;

  OwnerModel({required this.avatarUrl});

  factory OwnerModel.fromJson(dynamic json) {
    return OwnerModel(avatarUrl: json['avatar_url']);
  }

  @override
  String toString() {
    return "avatarUrl: $avatarUrl";
  }
}
