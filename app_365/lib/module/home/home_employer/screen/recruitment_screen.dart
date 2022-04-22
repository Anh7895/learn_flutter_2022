import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/theme/app_colors.dart';
import '../../../../common/theme/app_text_style.dart';
import '../../../../res.dart';
import '../../../../widget/color_button.dart';

class RecruitmentScreen extends StatelessWidget {
  const RecruitmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
         leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(Res.back), color: Colors.white,),
        title: Text(
         "TUYỂN DỤNG",
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
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(height: 15,),
            const TabBar(
              labelColor: AppColors.primary,
              isScrollable: true,
              tabs:  [

                            Tab(
                              text: "TIN ĐÃ ĐĂNG",
                            ),
                            Tab(
                              text: "TÌM KIẾM ỨNG VIÊN THEO GIỜ",
                            ),
                          ]
            ),
            const SizedBox(height: 32,),
            Expanded(
              child: TabBarView(
                  children: [
                    posted(context),
                    searchCandidate(context),
            ]),
            ),


          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 64,
        height: 64,
        child: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, "/post");
            },
          child: SvgPicture.asset(Res.add1),
            ),
      ),
    );
  }
  Widget posted(BuildContext context){
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 10),
          child: Container(
            width: 302,
            height: 199,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 125,
                        height: 16,
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
                        height: 16,
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
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 40,
                        child: ColorButton(title: "Giải pháp",
                          onPressed: (){
                          Navigator.pushNamed(context, "/solution");
                          },
                        ),
                      ),
                      const SizedBox(width: 20,),
                      SizedBox(
                        width: 130,
                        height: 40,

                        child: ColorButton(title: "Sửa",
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: 5);
  }
  Widget searchCandidate( BuildContext context){
    return ListView.separated(
      shrinkWrap: true,

        itemBuilder: (BuildContext context, int index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(

          width: 335,
          height: 144,
          decoration:  BoxDecoration(
            color: AppColors.WhiteFFFFFF,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0,4),
                blurRadius: 4,
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: 60,
                      height: 60,
                      child: IconButton(onPressed: (){}, icon: SvgPicture.asset(Res.camera),)),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Row(
                         children: [
                           Text("Văn Lộc",style: AppTextStyles.regularW500(context, size: 18),),
                           const SizedBox(width: 190,),
                           InkWell(
                             onTap: (){},
                             child: SvgPicture.asset(Res.tym),
                           ),
                         ],
                       ),
                      const SizedBox(height: 5,),
                       Text("Thợ Hồ", style: AppTextStyles.regularW400(context, size: 12),),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Res.user_hoso),
                            const SizedBox(width: 10,),
                            Text("Mã hồ sơ: 12345", style: AppTextStyles.regularW400(context, size: 12,color: AppColors.black404040),)
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(Res.eye_blue),
                            const SizedBox(width: 10,),
                            Text("Lượt xem: 12345", style: AppTextStyles.regularW400(context, size: 12,color: AppColors.black404040),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        SvgPicture.asset(Res.vi_tri_map),
                        const SizedBox(width: 10,),
                        Text("Hà Nội, Hồ Chí Minh", style: AppTextStyles.regularW400(context, size: 12,color: AppColors.black404040),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }, separatorBuilder: (context, index) => const SizedBox(height: 10,), itemCount: 5);
  }
}
