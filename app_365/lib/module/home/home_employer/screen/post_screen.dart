import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/theme/app_colors.dart';
import '../../../../common/theme/app_text_style.dart';
import '../../../../res.dart';
import '../../../../widget/color_button.dart';
import '../../../../widget/outline_textfield.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteFFFFFF,
      appBar: AppBar  (
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Res.back),
          color: Colors.white,
        ),
        title: Text(
          "Đăng tin",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const OutlineTextField(
                title: "Vị trí đăng tuyển",
                require: true,
                hintText: "VD: Đầu bếp",
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Ngành nghề",
                require: true,
                hintText: "VD: Đầu bếp",
                readOnly: true,
                iconSuffix: Res.right_arrow,
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Số lượng cần tuyển",
                require: true,
                hintText: "VD: Đầu bếp",
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Cấp bậc",
                require: true,
                hintText: "VD: Đầu bếp",
                readOnly: true,
                iconSuffix: Res.right_arrow,
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Địa điểm làm việc ",
                require: true,
                hintText: "Chọn địa điểm ",
                readOnly: true,
                iconSuffix: Res.right_arrow,
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Quận huyện làm việc ",
                require: true,
                hintText: "Chọn quận huyện ",
                readOnly: true,
                iconSuffix: Res.right_arrow,
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Hình thức làm việc ",
                require: true,
                hintText: "VD: Đầu bếp",
                readOnly: true,
                iconSuffix: Res.right_arrow,
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Mức lương ",
                require: true,
                hintText: "VD: Đầu bếp",
                readOnly: true,
                iconSuffix: Res.right_arrow,
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Trình độ học vấn ",
                require: true,
                hintText: "VD: Đầu bếp",
                readOnly: true,
                iconSuffix: Res.right_arrow,
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Thời gian thử việc ",
                require: true,
                hintText: "VD: 1 tuần 1 tháng ",
              ),
              const SizedBox(
                height: 20,
              ),
              const OutlineTextField(
                title: "Hoa hồng (nếu có) ",
                require: true,
                hintText: "VD: từ 10%  đến 12%",
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 40,),
              Align(
                alignment: Alignment.center,
                child: Text("LỊCH LÀM VIỆC", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
              ),
              const SizedBox(height: 10,),
              Text("Thời gian", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 80,),
              Align(
                alignment: Alignment.center,
                child: Text("MÔ TẢ CÔNG VIỆC", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
              ),
              const SizedBox(height: 10,),
              const OutlineTextField(
                maxLine: 5,
                hintText: "Nhập tối thiểu 50 từ",
                require: true,
                title: "Vị trí đăng tuyển",
              ),
              const SizedBox(height: 40,),
              Align(
                alignment: Alignment.center,
                child: Text("YÊU CẦU CÔNG VIỆC", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
              ),
              const SizedBox(height: 10,),
              Column(
                children: [
                ],
              ),
              const SizedBox(height: 20,),
              const OutlineTextField(
                maxLine: 5,
                hintText: "Nhập tối thiểu 50 từ",
                require: true,
                title: "Yêu cầu công việc",
              ),
              const SizedBox(height: 20,),
              Align(
                alignment: Alignment.center,
                child: Text("QUYỀN LỢI ĐƯỢC HƯỞNG", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
              ),
              const SizedBox(height: 10,),
              const OutlineTextField(
                maxLine: 5,
                hintText: "Nhập tối thiểu 50 từ",
                require: true,
                title: "Quyền lợi được hưởng",
              ),
              const SizedBox(height: 40,),
              Align(
                alignment: Alignment.center,
                child: Text("HỒ SƠ BAO GỒM", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
              ),
              const SizedBox(height: 10,),
              const OutlineTextField(
                maxLine: 5,
                hintText: "Nhập tối thiểu 50 từ",
                require: true,
                title: "Hồ sơ bao gồm",
              ),
              const SizedBox(height: 40,),
              Align(
                alignment: Alignment.center,
                child: Text("THÔNG TIN LIÊN HỆ", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
              ),
              const SizedBox(height: 10,),
              const OutlineTextField(
                hintText: "VD: Hoàng Duy",
                require: true,
                title: "Tên người liên hệ",
              ),
              const SizedBox(height: 10,),
              const OutlineTextField(
                hintText: "VD: Cầu Giấy",
                require: true,
                title: "Địa chỉ liên hệ",
              ),
              const SizedBox(height: 10,),
              const OutlineTextField(
                hintText: "VD: 099999999",
                require: true,
                title: "Số điện thoại liên hệ",
              ),
              const SizedBox(height: 10,),
              const OutlineTextField(
                hintText: "VD: truongquanganh0095@gmail.com",
                require: true,
                title: "Email liên hệ",
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130,
                    height: 40,
                    child: ColorButton(onPressed: (){},
                        title: 'Đăng tin',
                         ),
                  ),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 130,
                    height: 40,
                    child: ColorButton(onPressed: (){},
                      title: 'Hủy',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 130,
              height: 40,
              child: ColorButton(onPressed: (){},
                title: 'Đăng tin',
              ),
            ),
            SizedBox(width: 20,),
            SizedBox(
              width: 130,
              height: 40,
              child: ColorButton(onPressed: (){},
                title: 'Hủy',
              ),
            ),
          ],
        ),
      ),
    );

  }
}
