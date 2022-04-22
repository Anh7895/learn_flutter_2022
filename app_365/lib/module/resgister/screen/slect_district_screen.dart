import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/app_text_style.dart';
import '../../../widget/outline_textfield.dart';
class SelectDistrictScreen extends StatefulWidget {
  const SelectDistrictScreen({Key? key}) : super(key: key);

  @override
  State<SelectDistrictScreen> createState() => _SelectDistrictScreenState();
}

class _SelectDistrictScreenState extends State<SelectDistrictScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> listDictrict = ["Quận Ba Đình",
      "Quận Hoàn Kiếm",
      "Quận Đống Đa",
      "Quận Thanh Xuân",
      "Quận Cầu Giấy",
      "Quận Hoàng Mai",
      "Quận Hai Bà Trưng",
      "Quận Tây Hồ" ,"Quận Long Biên",
      "Quận Từ Liêm",
      "Quận Hà Đông",
      "Quận Thanh Trì",
      "Quận Gia Lâm",];
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
                "Quận Huyện",
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
                    return Text(listDictrict[index], style: AppTextStyles.regularW400(context, size: 20, color: Colors.black),);
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.black,),
                  itemCount: listDictrict.length),
            ],
          ),
        ),
      ),
    );
  }
}
