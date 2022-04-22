import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/theme/app_colors.dart';
import '../../../../common/theme/app_text_style.dart';
import '../../../../res.dart';
import '../../../../widget/color_button.dart';

class HomePageEmployerScreen extends StatelessWidget {
  const HomePageEmployerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(Res.logo_1),
          onPressed: () {},
        ),
        title: Text(
          "Vin Group",
          style:
              AppTextStyles.regularW400(context, size: 18, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Res.thongbao),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 23,
              ),
              // Text post
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Thống kê tin đăng",
                  style: AppTextStyles.regularW500(context,
                      size: 18, lineHeight: 20, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Row Candidate
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Box
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            children: [
                              Text(
                                "Ứng viên",
                                style: AppTextStyles.regularW400(context,
                                    size: 13,
                                    color: Colors.black,
                                    lineHeight: 20),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Ứng tuyển",
                                style: AppTextStyles.regularW400(context,
                                    size: 13,
                                    color: Colors.black,
                                    lineHeight: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "23",
                          style: AppTextStyles.regularW500(context,
                              size: 36, lineHeight: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  // Box
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            children: [
                              Text(
                                "Ứng viên",
                                style: AppTextStyles.regularW400(context,
                                    size: 13,
                                    color: Colors.black,
                                    lineHeight: 20),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Ứng tuyển",
                                style: AppTextStyles.regularW400(context,
                                    size: 13,
                                    color: Colors.black,
                                    lineHeight: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "23",
                          style: AppTextStyles.regularW500(context,
                              size: 36, lineHeight: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  // Box
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            children: [
                              Text(
                                "Ứng viên",
                                style: AppTextStyles.regularW400(context,
                                    size: 13,
                                    color: Colors.black,
                                    lineHeight: 20),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Ứng tuyển",
                                style: AppTextStyles.regularW400(context,
                                    size: 13,
                                    color: Colors.black,
                                    lineHeight: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "23",
                          style: AppTextStyles.regularW500(context,
                              size: 36, lineHeight: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Box news
              Container(
                width: 335,
                height: 165,
                decoration: BoxDecoration(
                  color: AppColors.WhiteFFFFFF,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black000000.withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                  border: Border.all(color: Colors.blue),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 8,
                            child: Text(
                              "Tin vip",
                              style: AppTextStyles.regularW400(context,
                                  size: 13, color: Colors.black),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "0",
                              style:
                                  AppTextStyles.regularW400(context, size: 13),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 8,
                            child: Text(
                              "Việc làm sắp hết hạn ",
                              style: AppTextStyles.regularW400(context,
                                  size: 13, color: Colors.black),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "12",
                              style:
                                  AppTextStyles.regularW400(context, size: 13),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 8,
                            child: Text(
                              "Việc làm hết hạn ",
                              style: AppTextStyles.regularW400(context,
                                  size: 13, color: Colors.black),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "0",
                              style:
                                  AppTextStyles.regularW400(context, size: 13),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 8,
                            child: Text(
                              "Việc làm còn hạn",
                              style: AppTextStyles.regularW400(context,
                                  size: 13, color: Colors.black),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "0",
                              style:
                                  AppTextStyles.regularW400(context, size: 13),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 8,
                            child: Text(
                              "Số tin đăng trong ngày",
                              style: AppTextStyles.regularW400(context,
                                  size: 13, color: Colors.black),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "0",
                              style:
                                  AppTextStyles.regularW400(context, size: 13),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            flex: 8,
                            child: Text(
                              "Số lần làm mới tin trong ngày",
                              style: AppTextStyles.regularW400(context,
                                  size: 13, color: Colors.black),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "0",
                              style:
                                  AppTextStyles.regularW400(context, size: 13),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //Text
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Text(
                      "DS tin tuyển dụng mới nhất",
                      style: AppTextStyles.regularW700(context,
                          size: 18, color: Colors.black, lineHeight: 20),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Xem thêm",
                        style: AppTextStyles.regularW400(context, size: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              // Box CTV
              SizedBox(
                height: 162,
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    itemBuilder: (context, index) => Container(
                      width: 302,
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
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "CTV bán hàng online",
                                  style: AppTextStyles.regularW500(
                                      context,
                                      size: 16,
                                      lineHeight: 20),
                                )),
                            Row(
                              children: [
                                SizedBox(
                                  width: 125,
                                  height: 16,
                                  child: Text(
                                    "Thời gian",
                                    style: AppTextStyles.regularW500(
                                        context,
                                        size: 13,
                                        color: AppColors.black404040),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 16,
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "20/02/2021 - 22/03/2021",
                                        style: AppTextStyles.regularW500(
                                            context,
                                            size: 13,
                                            color: AppColors.black404040),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 125,
                                  height: 16,
                                  child: Text(
                                    "Ngày ứng tuyển",
                                    style: AppTextStyles.regularW500(
                                        context,
                                        size: 13,
                                        color: AppColors.black404040),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 16,
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "30/2/2021",
                                        style: AppTextStyles.regularW500(
                                            context,
                                            size: 13,
                                            color: AppColors.black404040),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 125,
                                  height: 16,
                                  child: Text(
                                    "Lượt ứng tuyển",
                                    style: AppTextStyles.regularW500(
                                        context,
                                        size: 13,
                                        color: AppColors.black404040),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 16,
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "5",
                                        style: AppTextStyles.regularW500(
                                            context,
                                            size: 13,
                                            color: AppColors.black404040),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 125,
                                  height: 20,
                                  child: Text(
                                    "Quản lý",
                                    style: AppTextStyles.regularW500(
                                        context,
                                        size: 13,
                                        color: AppColors.black404040),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 20,
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                          onTap: () {},
                                          child: Text(
                                            "Còn hạn",
                                            style:
                                                AppTextStyles.regularW500(
                                                    context,
                                                    size: 13,
                                                    color: AppColors
                                                        .blue307DF1),
                                          ))),
                                ),
                                const SizedBox(height: 10,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5),
              ),
              const SizedBox(
                height: 50,
              ),
              // Text
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Text(
                      "Hồ sơ ứng tuyển mới nhất",
                      style: AppTextStyles.regularW700(context,
                          size: 18, color: Colors.black, lineHeight: 20),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Xem thêm",
                        style: AppTextStyles.regularW400(context, size: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              // Box candidate
              SizedBox(
                height: 200,
                child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    itemBuilder: (context, index) => Container(

                          decoration: BoxDecoration(
                            color: AppColors.WhiteFFFFFF,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                blurRadius: 4,
                                spreadRadius: 0,
                                color: AppColors.black000000.withOpacity(0.25),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(Res.camera),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 207,
                                      height: 22,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Văn Lộc",
                                          style: AppTextStyles.regularW500(
                                              context,
                                              size: 18,
                                              lineHeight: 20,
                                              color: AppColors.black404040),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 125,
                                      height: 16,
                                      child: Text(
                                        "Vị trí ứng tuyển",
                                        style: AppTextStyles.regularW500(
                                            context,
                                            size: 13,
                                            color: AppColors.black404040),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 16,
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "Nhân viên trông quán nét",
                                            style: AppTextStyles.regularW500(
                                                context,
                                                size: 13,
                                                color: AppColors.black404040),
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 125,
                                      height: 16,
                                      child: Text(
                                        "Ngày Nộp",
                                        style: AppTextStyles.regularW500(
                                            context,
                                            size: 13,
                                            color: AppColors.black404040),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 16,
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "20/10/2021",
                                            style: AppTextStyles.regularW500(
                                                context,
                                                size: 13,
                                                color: AppColors.black404040),
                                          )),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    SizedBox(
                                        width: 90,
                                        height: 40,
                                        child: ColorButton(
                                          title: "Lưu",
                                          onPressed: () {},
                                          radius: BorderRadius.circular(20),
                                        )),
                                    const SizedBox(width: 20,),
                                    SizedBox(
                                        width: 90,
                                        height: 40,
                                        child: ColorButton(
                                          title: "Bỏ qua",
                                          onPressed: () {},
                                        )),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5),
              ),
              const SizedBox(
                height: 20,
              ),

              //BottomNavigationBar(items: items)
            ],
          ),
        ),
      ),
    );
  }
}
