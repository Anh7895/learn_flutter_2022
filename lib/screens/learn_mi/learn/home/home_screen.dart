import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_2022/screens/learn_mi/learn/model/repo_model.dart';

import 'home_logic.dart';

class HomeScreen extends StatelessWidget {
  late HomeLogic bloc;

  @override
  Widget build(BuildContext context) {
    bloc = HomeLogic();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Provider<HomeLogic>(
        bloc: bloc,
        child: StreamBuilder(
          stream: bloc.listGithub,
          builder: (context, snap) {
            if (snap.hasData) {
              List<RepoModel> list = snap.data as List<RepoModel>;
              return _createListView(list);
            } else {
              return Center(child: const CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Widget _createListView(List<RepoModel> listRepo) {
    return ListView.separated(
        itemBuilder: (context, index) {
          var repoModel = listRepo[index];
          return Card(
            elevation: 5,
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  backgroundImage:
                  NetworkImage(repoModel.owner.avatarUrl),
                ),
                title: Text(repoModel.fullName),
                onTap: () {},
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10);
        },
        itemCount: listRepo.length);
  }
}

class Provider<T> extends InheritedWidget {
  final T bloc;

   const Provider({Key? key, required Widget child, required this.bloc}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant Provider oldWidget) {
    return false;
  }

  static Provider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>()!;
  }
}
