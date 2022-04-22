import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/app_text_style.dart';
import '../../../widget/outline_textfield.dart';

class SelectJobScreen extends StatefulWidget {
  const SelectJobScreen({Key? key}) : super(key: key);

  @override
  State<SelectJobScreen> createState() => _SelectJobScreenState();
}

class _SelectJobScreenState extends State<SelectJobScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> listJob = ["Bán Hàng",
      "Phục vụ/ Tạp vụ",
      "Xây dựng/ Công trình",
      "Vận chuyển/ Bốc vác",
      "Nấu ăn/ Đầu bếp",
      "Hành chính",
      "Giao Hàng",
      "Tổ chức sự kiện",
      "Kho bãi",
      "Nhà Hàng",
      "Khách sạn",
      ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 59,
                width: double.infinity,
              ),
              Text(
                "Ngành nghề mong muốn",
                style: AppTextStyles.regularW400(context, size: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(hintText: "Nhập để tìm kiếm", ),
              const SizedBox(
                height: 30,
              ),
              ListView.separated(
                  shrinkWrap: true, // boc thi them thuoc tinh shrinkWrap
                  itemBuilder: (BuildContext context, int index) {
                    return Text(listJob[index], style: AppTextStyles.regularW400(context, size: 20, color: Colors.black),);
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.black,),
                  itemCount: listJob.length),
            ],
          ),
        ),
      ),
    );
  }
}
