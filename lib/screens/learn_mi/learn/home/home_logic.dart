import 'dart:convert';
import 'package:learn_flutter_2022/screens/learn_mi/learn/model/repo_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

class HomeLogic {
  final _listGithub = PublishSubject<List<RepoModel>>();
  Stream<List<RepoModel>> get listGithub => _listGithub.stream;


  HomeLogic(){
    getListRepo();
  }
  void getListRepo() async {
    await Future.delayed(const Duration(seconds: 3));
    var queryParams = <String, String>{"q": "trending", "sort": "start"};
    String queryString = Uri(queryParameters: queryParams).query;

    var fullUrl = 'https://api.github.com/search/repositories?$queryString';
    var uri = Uri.parse(fullUrl);
    var _httpClient = http.Client();
    var response = await _httpClient.get(uri);
    var isSuccess = response.statusCode == 200;
    if (isSuccess) {
      String bodyResponse = response.body;
      final json = jsonDecode(bodyResponse);
      GitResponse gitResponse = GitResponse.fromJson(json);
      _listGithub.add(gitResponse.items);
    } else {
      //TODO
    }
  }
}
