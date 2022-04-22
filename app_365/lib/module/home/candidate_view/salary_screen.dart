import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/outline_textfield.dart';

class SalaryScreen extends StatelessWidget {
  const SalaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteFFFFFF,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Res.back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'MỨC LƯƠNG',
          style: AppTextStyles.regularW700(
            context,
            size: 16,
            lineHeight: 18.75,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            InkWell(
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                          color: AppColors.blue307DF1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "CỐ ĐỊNH",
                    style: AppTextStyles.regularW500(context,
                        size: 18, lineHeight: 21, color: AppColors.black404040),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Row(children: [
              const SizedBox(
                  width: 230,
                  height: 40,
                  child: OutlineTextField(hintText: "VD: 25000")),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                  width: 90,
                  height: 40,
                  child: OutlineTextField(
                    hintText: "Giờ",
                    readOnly: true,
                    iconSuffix: Res.down_arrow,
                    onPressed: () {},
                  ))
            ]),
            const SizedBox(height: 40,),
            InkWell(
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                          color: AppColors.blue307DF1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "ƯỚC LƯỢNG",
                    style: AppTextStyles.regularW500(context,
                        size: 18, lineHeight: 21, color: AppColors.black404040),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Row(children: [
              const SizedBox(
                  width: 103,
                  height: 40,
                  child: OutlineTextField(hintText: "VD: 25000")),
              const SizedBox(
                width: 24,
              ),
              const SizedBox(
                  width: 103,
                  height: 40,
                  child: OutlineTextField(hintText: "VD: 25000")),
              const SizedBox(width: 15,),
              SizedBox(
                  width: 90,
                  height: 40,
                  child: OutlineTextField(
                    hintText: "Giờ",
                    readOnly: true,
                    iconSuffix: Res.  down_arrow,
                    onPressed: () {},
                  ))
            ]),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        width: 375,
        height: 60,
        child: SizedBox(
          width: 130,
            height: 40,
            child: ColorButton(title: "Áp dụng", onPressed: (){},)),
      ),
    );
  }
}
