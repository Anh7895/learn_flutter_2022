import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../data_off/model.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/custom_scaffold.dart';
import '../../../widget/outline_textfield.dart';
import '../../../widget/select_drop_list.dart';

class CandidateFromFilterScreen extends StatefulWidget {
  const CandidateFromFilterScreen({Key? key}) : super(key: key);

  @override
  State<CandidateFromFilterScreen> createState() => _CandidateFromFilterScreenState();
}

class _CandidateFromFilterScreenState extends State<CandidateFromFilterScreen> {
  DropListModel listSex = DropListModel(
    [
      OptionItem(id: "1", title: "Trạng thái"),
      OptionItem(id: "2", title: "Đến phỏng vấn"),
      OptionItem(id: "3", title: "Đạt yêu cầu"),
      OptionItem(id: "4", title: "Không đạt yêu cầu"),
    ],
  );

  OptionItem itemSex = OptionItem(id: null, title: "Giới tính");

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "ỨNG VIÊN TỪ ĐIỂM LỌC ",
      action: [
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: 30,
            height: 30,
            child: SvgPicture.asset(Res.filter_apply)),
      ],
      body: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            // Size Box
            decoration: BoxDecoration(
                color: AppColors.WhiteFFFFFF,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black000000.withOpacity(0.25),
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // image
                Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: SvgPicture.asset(Res.camera),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Văn lộc",
                      style: AppTextStyles.regularW500(context, size: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // address
                Row(
                  children: [
                    SvgPicture.asset(Res.vi_tri_map),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Hà Nội, Hồ Chí Minh",
                      style: AppTextStyles.regularW400(context,
                          size: 12,
                          lineHeight: 20,
                          color: AppColors.black404040),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    SvgPicture.asset(Res.phone),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "0123456789",
                      style: AppTextStyles.regularW400(context,
                          size: 12,
                          lineHeight: 20,
                          color: AppColors.black404040),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //day
                Row(
                  children: [
                    SvgPicture.asset(Res.watch),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Ca 1: Thứ 2, Thứ 3 , Thứ 4, Thứ 5, Thứ 6, Thứ 7, CN",
                      style: AppTextStyles.regularW400(context,
                          size: 12,
                          lineHeight: 20,
                          color: AppColors.black404040),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Button
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: OutlinedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => _showDialog(context));
                          },
                          child: Text("Ghi chú"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: SelectDropListBorder(
                        this.itemSex,
                        this.listSex,
                            (optionItem) {
                          itemSex = optionItem;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
          itemCount: 5),
    );
  }

  Widget _showDialog(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(

              alignment: Alignment.center,
              child: Text(
                "Ghi chú nhà tuyển dụng ",
                style: AppTextStyles.regularW700(context,
                    size: 20, lineHeight: 20, color: AppColors.blue307DF1),
              ),
            ),
            const SizedBox(height: 10,),
            OutlineTextField(
              hintText: "Nhập ghi chú",
              maxLine: 5,
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 90,
              height: 40,
              child: ColorButton(
                title: "Lưu",
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
