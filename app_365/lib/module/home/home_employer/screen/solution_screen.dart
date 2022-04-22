import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/theme/app_colors.dart';
import '../../../../common/theme/app_text_style.dart';
import '../../../../res.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteFFFFFF,
      appBar:  AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(Res.back), color: Colors.white,),
        title: Text(
          "ĐỀ XUẤT GIẢI PHÁP TUYỂN DỤNG",
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              // Box
              Container(
                width: 335,
                height: 155,
                decoration: BoxDecoration(
                  color: AppColors.WhiteFFFFFF,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                      color:
                      AppColors.black000000.withOpacity(0.25),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Công ty đang tuyển", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                          InkWell(
                            onTap: (){},
                            child: Text("Thợ hồ", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ngành nghề", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                          InkWell(
                            onTap: (){},
                            child: Text("Xây dựng", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mức độ cạnh tranh", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                          InkWell(
                            onTap: (){},
                            child: Text("Nhiều", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Khu vực", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                          InkWell(
                            onTap: (){},
                            child: Text("Hà Nội", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Số lượng ứng viên", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                          InkWell(
                            onTap: (){},
                            child: Text("Nhiều", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              // Box
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: 335,
                height: 237,
                decoration: BoxDecoration(
                  color: AppColors.WhiteFFFFFF,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                      color:
                      AppColors.black000000.withOpacity(0.25),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 25,height: 17,
                         child: SvgPicture.asset(Res.icon_phantich),),
                        const SizedBox(width: 20,),
                        Text("PHÂN TÍCH HỆ THỐNG", style: AppTextStyles.regularW500(context, size: 16),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Luợt xem tin tuyển dụng", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                        InkWell(
                          onTap: (){},
                          child: Text("Nhiều", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lượt ứng tuyển", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                        InkWell(
                          onTap: (){},
                          child: Text("10", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tỷ lệ ứng tuyển / lượt xem", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.black404040),),
                        InkWell(
                          onTap: (){},
                          child: Text("1.234%", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.blue307DF1),),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Text("Tỷ lệ này rất thấp so với thực tế. Để có ứng viên xem và ứng tuyển quý công ty thực hiện: Tối ưu nội dung tin đăng, làm mới nội dung .",
                      style: AppTextStyles.regularW400(context, size: 16, lineHeight: 22, color: AppColors.black404040),),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              //GP
              Row(
                children: [
                  SizedBox(width: 25,height: 17,
                    child: SvgPicture.asset(Res.icon_phantich),),
                  const SizedBox(width: 20,),
                  Text("ĐỀ XUẤT GIẢI PHÁP", style: AppTextStyles.regularW500(context, size: 16),),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Giải pháp 1", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.orginFFA800),),
                  InkWell(
                    onTap: (){},
                    child: Text("xem thêm",style: AppTextStyles.regularW500(context, size: 16,),),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text("Tỷ lệ này rất thấp so với thực tế. Để có ứng viên xem và ứng tuyển quý công ty thực hiện: Tối ưu nội dung tin đăng, làm mới nội dung .",
                style: AppTextStyles.regularW400(context, size: 16, lineHeight: 22, color: AppColors.black404040),),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Giải pháp 2", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.orginFFA800),),
                  InkWell(
                    onTap: (){},
                    child: Text("xem thêm",style: AppTextStyles.regularW500(context, size: 16,),),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text("Tỷ lệ này rất thấp so với thực tế. Để có ứng viên xem và ứng tuyển quý công ty thực hiện: Tối ưu nội dung tin đăng, làm mới nội dung .",
                style: AppTextStyles.regularW400(context, size: 16, lineHeight: 22, color: AppColors.black404040),),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Giải pháp 3", style: AppTextStyles.regularW500(context, size: 16, color: AppColors.orginFFA800),),
                  InkWell(
                    onTap: (){},
                    child: Text("xem thêm",style: AppTextStyles.regularW500(context, size: 16,),),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text("Tỷ lệ này rất thấp so với thực tế. Để có ứng viên xem và ứng tuyển quý công ty thực hiện: Tối ưu nội dung tin đăng, làm mới nội dung .",
                style: AppTextStyles.regularW400(context, size: 16, lineHeight: 22, color: AppColors.black404040),),
              const SizedBox(height: 40,),
              const Divider(),
              const SizedBox(height: 10,),
              Text("Để có thể tư vấn rõ hơn về cách tối ưu nội dung đăng tin và sử dụng dịch vụ giúp tuyển dụng nhanh chóng hiệu quả hãy gọi chuyên viên hỗ trợ: ",
                style: AppTextStyles.regularW400(context, size: 16, lineHeight: 22, color: AppColors.black404040),),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text("Mai Hương (0987580094)", style: AppTextStyles.regularW500(context, size: 16),),
                    Text("hot line", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
                    Text(" 033333333 | 099999999 ", style: AppTextStyles.regularW500(context, size: 16),),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Text("Chúng tôi luôn hỗ trợ trực tuyến 24/24 kể cả ngày nghỉ và lễ tết ", style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black404040),),
            ],
          ),
        ),
      ),
    );
  }
}
