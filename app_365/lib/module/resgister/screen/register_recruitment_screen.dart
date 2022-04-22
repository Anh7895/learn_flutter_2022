import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/outline_textfield.dart';

class RegisterRecruitmentScreen extends StatelessWidget {
  const RegisterRecruitmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 59,
              ),
              Text(
                "Đăng ký nhà tuyển dụng",
                style: AppTextStyles.regularW700(context, size: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                " Nhập đầy đủ thông tin để đăng ký ",
                style: AppTextStyles.regularW400(context, size: 14),
              ),
              const SizedBox(height: 20),
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.blackc4c4c4,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
                child: SvgPicture.asset(
                  Res.camera,
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              const OutlineTextField(
                hintText: "Số điện thoại",
              ),
              const SizedBox(
                height: 10,
              ),
              const OutlineTextField(
                hintText: "Mật khẩu",
              ),
              const SizedBox(
                height: 10,
              ),
              const OutlineTextField(
                hintText: "Nhập lại mật khẩu",
              ),
              const SizedBox(
                height: 10,
              ),
              const OutlineTextField(
                hintText: "Tên doanh nghiệp",
              ),
              const SizedBox(
                height: 10,
              ),
              const OutlineTextField(
                hintText: "Địa chỉ Email",
              ),
              const SizedBox(
                height: 10,
              ),
              const OutlineTextField(
                hintText: "Địa chỉ",
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "Tỉnh thành",
                iconSuffix: Res.right_arrow,
                readOnly: true,
                onPressed: (){Navigator.pushNamed(context, "/select_city");},
              ),
              const SizedBox(height: 10,),
              OutlineTextField(
                hintText: "Quận huyện",
                iconSuffix: Res.right_arrow,
                readOnly: true,
                onPressed: (){Navigator.pushNamed(context, "/select_district");},
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 100,
                  height: 40,
                  child: ColorButton(title: "Xác nhận", onPressed: (){
                    Navigator.pushNamed(context, "/otp_authentication");
                  },)),
            ],
          ),
        ),
      ),
    );
  }
}
