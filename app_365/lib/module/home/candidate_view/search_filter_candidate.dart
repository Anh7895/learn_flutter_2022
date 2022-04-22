import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widget/custom_scaffold.dart';
class SearchFilterCandidateScreen extends StatefulWidget {
  const SearchFilterCandidateScreen({Key? key}) : super(key: key);

  @override
  State<SearchFilterCandidateScreen> createState() => _SearchFilterCandidateScreenState();
}

class _SearchFilterCandidateScreenState extends State<SearchFilterCandidateScreen> {
  List<String> listFilter = ['Tất cả', 'Trạng thái', 'Đến phỏng vấn','Hồ sơ đạt yêu cầu', 'Không đạt yêu cầu'];
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
