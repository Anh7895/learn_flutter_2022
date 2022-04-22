import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_scaffold.dart';

class SearchCandidateFromFilterScreen extends StatefulWidget {
  const SearchCandidateFromFilterScreen({Key? key}) : super(key: key);

  @override
  State<SearchCandidateFromFilterScreen> createState() => _SearchCandidateFromFilterScreenState();
}

class _SearchCandidateFromFilterScreenState extends State<SearchCandidateFromFilterScreen> {
  List<String> listFilter = ['Tất cả', 'Trạng thái', 'Đã có việc','Không nghe máy', 'Sai thông tin', 'Khác'];
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "BỘ LỌC",
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          itemBuilder: (context, index) => InkWell(
            onTap: (){},
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 15, 20, 5),
              child: Text(listFilter[index]),
            ),
          ),
          separatorBuilder: (context, index)=> const Divider(),
          itemCount: 5),
    );
  }
}
