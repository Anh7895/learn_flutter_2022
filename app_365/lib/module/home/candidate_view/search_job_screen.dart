import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../widget/custom_scaffold_2.dart';
import '../../../widget/outline_textfield.dart';

class SearchJobScreen extends StatefulWidget {

  const SearchJobScreen({Key? key}) : super(key: key);

  @override
  State<SearchJobScreen> createState() => _SearchJobScreenState();
}

class _SearchJobScreenState extends State<SearchJobScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> listJob = [
      'Trông trẻ theo giờ',
      'Phục vụ tiệc cưới theo giờ',
      'Rửa bát theo giờ'
    ];
    return CustomScaffold2(
      title: "Ngành nghề",
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const OutlineTextField(hintText: "Nhập để tìm kiếm"),
            const SizedBox(height: 20,),
            ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context, index) => Text(listJob[index],style: AppTextStyles.regularW400(context, size: 20, color: AppColors.black404040),),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: listJob.length)
          ],
        ),
      ),
    );
  }
}
