import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';


import '../../../common/restiger/time/time.dart';
import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/outline_button.dart';

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class CandidateDetailsScreen extends StatefulWidget {
  const CandidateDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CandidateDetailsScreen> createState() => _CandidateDetailsScreenState();
}

class _CandidateDetailsScreenState extends State<CandidateDetailsScreen>
    with SingleTickerProviderStateMixin {
  late final bool showBtnBack;
  late final VoidCallback? opPressBtnBack;
  late TabController _tabController;
  final int _tabCount = 5;
  bool _pinned = true;
  List<Time> list = [
    Time(
        dayOfTheWeek: 'Thứ 2',
        morning: false,
        afternoon: false,
        evening: false),
    Time(
        dayOfTheWeek: 'Thứ 3',
        morning: false,
        afternoon: false,
        evening: false),
    Time(
        dayOfTheWeek: 'Thứ 4',
        morning: false,
        afternoon: false,
        evening: false),
    Time(
        dayOfTheWeek: 'Thứ 5',
        morning: false,
        afternoon: false,
        evening: false),
    Time(
        dayOfTheWeek: 'Thứ 6',
        morning: false,
        afternoon: false,
        evening: false),
    Time(
        dayOfTheWeek: 'Thứ 7',
        morning: false,
        afternoon: false,
        evening: false),
    Time(
        dayOfTheWeek: 'Chủ Nhật',
        morning: false,
        afternoon: false,
        evening: false),
  ];
  @override
  void initState() {
    _tabController = TabController(length: _tabCount, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // title: '',
        // action: [Icon(Icons.favorite_border)],
        // showBtnBack: true,
        // bottomNavigationBar: OutLineButtonV2(
        //   title: 'Lưu',s
        //   title1: 'Không lưu',
        // ),
        bottomNavigationBar: const OutLineButton(
          title: 'Xem liên hệ',

        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
        title: Text("CHI TIẾT ỨNG VIÊN"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              pinned: _pinned,
              expandedHeight: 250,
              actions: const [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 20,
                )
              ],
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: SvgPicture.asset(
                  Res.back,
                  color: Colors.white,
                ),
              ),
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 55),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: AppColors.WhiteFFFFFF,
                              border: Border.all(
                                color: AppColors.primary307DF1,
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(200.5),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("Văn Lộc",style: AppTextStyles.regularW500(context, size: 20,color: AppColors.WhiteFFFFFF),),
                          const SizedBox(
                            height: 11,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(Res.hoso,color: AppColors.WhiteFFFFFF,),
                                  const SizedBox(
                                    width: 11.1,
                                  ),
                                  Text(
                                    "Mã hồ sơ :",
                                    style: AppTextStyles.regularW300(context,
                                        size: 12, color: AppColors.WhiteFFFFFF),
                                  ),
                                  Text(
                                    "100",
                                    style: AppTextStyles.regularW300(context,
                                        size: 12, color: AppColors.WhiteFFFFFF),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(Res.view_fill),
                                  const SizedBox(
                                    width: 11.1,
                                  ),
                                  Text(
                                    "Lượt xem :",
                                    style: AppTextStyles.regularW300(context,
                                        size: 12, color: AppColors.WhiteFFFFFF),
                                  ),
                                  Text(
                                    "9999",
                                    style: AppTextStyles.regularW300(context,
                                        size: 12, color: AppColors.WhiteFFFFFF),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(children:  [
                            SvgPicture.asset(Res.diachi,color: AppColors.WhiteFFFFFF,),
                            const SizedBox(width: 13.34,),
                            Text("Hà Nội / Hồ Chí Minh",style:AppTextStyles.regularW400(context, size: 12,color: AppColors.WhiteFFFFFF),)
                          ],)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverPersistentHeader(
                pinned: true,
                delegate: StickyTabBarDelegate(
                  child: TabBar(
                    indicatorColor: AppColors.WhiteFFFFFF,
                    controller: _tabController,
                    labelColor: AppColors.primary,
                    isScrollable: true,
                    tabs: const [
                      Tab(
                        text: "THÔNG TIN LIÊN HỆ ",
                      ),
                      Tab(
                        text: "CÔNG VIỆC MONG MUỐN",
                      ),
                      Tab(
                        text: "KĨ NĂNG CÁ NHÂN",
                      ),
                      Tab(
                        text: "KINH NGHIỆM LÀM VIỆC",
                      ),
                      Tab(
                        text: "BUỔI CÓ THỂ ĐI LÀM",
                      ),
                    ],
                  ),
                )),
            SliverFillRemaining(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(child: information(context)),
                    desiredjob(context),
                    worktogether(context),
                    similarjob(context),
                    cangotowork(context),
                  ],
                ))

          ],
        ));
  }

  Widget information(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                    blurRadius: 4,
                    color: AppColors.black000000.withOpacity(0.25),
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                color: AppColors.WhiteFFFFFF,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Họ và tên : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, lineHeight: 20,color: AppColors.black000000),
                      ),
                      Expanded(
                          child: Text(
                            "Ngô Văn Lộc",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Ngày sinh : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "20/01/2000",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Giới tính : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "Nam",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Hôn nhân : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "Độc thân",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Số điện thoại  : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "**********",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Email : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "**********",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Địa chỉ : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "1 Định Công, Hoàng Mai, Hà Nội",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ứng viên liên quan",textAlign:TextAlign.left,style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black000000),),
                const SizedBox(height: 10,),
                Container(
                  height: 400,
                  child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 40,
                      ),
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                              blurRadius: 4,
                              color: AppColors.black000000.withOpacity(0.25),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.WhiteFFFFFF,
                        ),
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(context, "/jobdtails"),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                    'https://www.mintformations.co.uk/blog/wp-content/uploads/2020/05/shutterstock_583717939.jpg',
                                    height: 79,
                                    width: 79,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Văn Lộc',
                                        style: AppTextStyles.regularW500(
                                          context,
                                          size: 16,
                                          lineHeight: 20,
                                          color: AppColors.black404040,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Thợ Hồ',
                                        style: AppTextStyles.regularW400(
                                          context,
                                          size: 12,
                                          lineHeight: 20,
                                          color: AppColors.black404040,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 11,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(children: [
                                SvgPicture.asset(Res.diachi),
                                const SizedBox(width: 13.34,),
                                Text("Hà Nội, Hồ Chí Minh")
                              ],)
                            ],
                          ),
                        ),
                      ),
                      itemCount: 5,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 20,
                          height: 20,
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget desiredjob(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            margin: new EdgeInsets.only(left: 10, right: 10, bottom: 70, top: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 4,
                  color: AppColors.black000000.withOpacity(0.25),
                )
              ],
              borderRadius: BorderRadius.circular(15),
              color: AppColors.WhiteFFFFFF,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Công việc : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "Thiết kế",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Ngành nghề : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: AppColors.black000000.withOpacity(0.25),
                                )
                              ],
                            ),
                            child: Text(
                              "IT phần cứng",
                              style: AppTextStyles.regularW400(context,
                                  size: 16, lineHeight: 20),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: AppColors.black000000.withOpacity(0.25),
                                )
                              ],
                            ),
                            child: Text(
                              "Phần mềm sinh học",
                              style: AppTextStyles.regularW400(context,
                                  size: 16, lineHeight: 20),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: AppColors.black000000.withOpacity(0.25),
                                )
                              ],
                            ),
                            child: Text(
                              "IT phần mềm",
                              style: AppTextStyles.regularW400(context,
                                  size: 16, lineHeight: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 46,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Cấp bậc mong muốn: ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "Nhân viên",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Hình thức : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "Bán thời gian",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Mức lương : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "10.000.000",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Res.blackdot,height: 6,width: 6,),
                      const SizedBox(width: 5,),
                      Text(
                        "Địa điểm : ",
                        style: AppTextStyles.regularW400(context,
                            size: 16, color: AppColors.black000000, lineHeight: 20),
                      ),
                      Expanded(
                          child: Text(
                            "2 Định Công, Hoang Mai, Hà Nội",
                            style: AppTextStyles.regularW400(context,
                                size: 16, lineHeight: 20),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ứng viên liên quan",textAlign:TextAlign.left,style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black000000),),
              const SizedBox(height: 1,),
              Container(
                height: 400,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: AppColors.black000000.withOpacity(0.25),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.WhiteFFFFFF,
                      ),
                      child: InkWell(

                        child: Column(
                          children: [
                            Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                  'https://www.mintformations.co.uk/blog/wp-content/uploads/2020/05/shutterstock_583717939.jpg',
                                  height: 79,
                                  width: 79,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Văn Lộc',
                                      style: AppTextStyles.regularW500(
                                        context,
                                        size: 16,
                                        lineHeight: 20,
                                        color: AppColors.black404040,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Thợ Hồ',
                                      style: AppTextStyles.regularW400(
                                        context,
                                        size: 12,
                                        lineHeight: 20,
                                        color: AppColors.black404040,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(children: [
                              SvgPicture.asset(Res.diachi),
                              const SizedBox(width: 13.34,),
                              Text("Hà Nội, Hồ Chí Minh")
                            ],)
                          ],
                        ),
                      ),
                    ),
                    itemCount: 5,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                        height: 20,
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget worktogether(BuildContext context) {
    return SingleChildScrollView(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 40,
                ),
                itemBuilder: (context, index) => Container(
                  height: 115,
                  width: 335,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                        blurRadius: 4,
                        color: AppColors.black000000.withOpacity(0.25),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.WhiteFFFFFF,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, "/jobdtails"),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hà Nội, Hồ Chí Minh")
                      ],
                    ),
                  ),
                ),
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                    height: 20,
                  );
                }),
          ),
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ứng viên liên quan",textAlign:TextAlign.left,style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black000000),),
              const SizedBox(height: 15,),
              Container(
                height: 400,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 40,
                    ),
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: AppColors.black000000.withOpacity(0.25),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.WhiteFFFFFF,
                      ),
                      child: InkWell(
                        onTap: () => Navigator.pushNamed(context, "/jobdtails"),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                  'https://www.mintformations.co.uk/blog/wp-content/uploads/2020/05/shutterstock_583717939.jpg',
                                  height: 79,
                                  width: 79,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Văn Lộc',
                                      style: AppTextStyles.regularW500(
                                        context,
                                        size: 16,
                                        lineHeight: 20,
                                        color: AppColors.black404040,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Thợ Hồ',
                                      style: AppTextStyles.regularW400(
                                        context,
                                        size: 12,
                                        lineHeight: 20,
                                        color: AppColors.black404040,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(children: [
                              SvgPicture.asset(Res.diachi),
                              const SizedBox(width: 13.34,),
                              Text("Hà Nội, Hồ Chí Minh")
                            ],)
                          ],
                        ),
                      ),
                    ),
                    itemCount: 5,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20,
                        height: 20,
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget similarjob(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            height: 300,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 4,
                      color: AppColors.black000000.withOpacity(0.25),
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.WhiteFFFFFF,
                ),
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "SUZUKYIVU",
                      style: AppTextStyles.regularW400(context,
                          size: 16, color: AppColors.black000000),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "Thực tập bán hàng",
                      style: AppTextStyles.regularW300(context,
                          size: 16, color: AppColors.black000000),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "20/01/2021 - 20/01/2021",
                      style: AppTextStyles.regularW300(context,
                          size: 16, color: AppColors.black000000),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Bán nhiều hàng nhất tháng 1 đạt giải nhân viên trẻ của tháng",
                      style: AppTextStyles.regularW500(context,
                          size: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              itemCount: 2,
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                  height: 10,
                );
              },
            ),
          ),
          const SizedBox(height: 35,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ứng viên liên quan",textAlign:TextAlign.left,style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black000000),),
              const SizedBox(height: 1,),
              Container(
                height: 400,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 10,
                    ),
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            blurRadius: 4,
                            color: AppColors.black000000.withOpacity(0.25),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.WhiteFFFFFF,
                      ),
                      child: InkWell(

                        child: Column(
                          children: [
                            Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                  'https://www.mintformations.co.uk/blog/wp-content/uploads/2020/05/shutterstock_583717939.jpg',
                                  height: 79,
                                  width: 79,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Văn Lộc',
                                      style: AppTextStyles.regularW500(
                                        context,
                                        size: 16,
                                        lineHeight: 20,
                                        color: AppColors.black404040,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Thợ Hồ',
                                      style: AppTextStyles.regularW400(
                                        context,
                                        size: 12,
                                        lineHeight: 20,
                                        color: AppColors.black404040,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(children: [
                              SvgPicture.asset(Res.diachi),
                              const SizedBox(width: 13.34,),
                              Text("Hà Nội, Hồ Chí Minh")
                            ],)
                          ],
                        ),
                      ),
                    ),
                    itemCount: 5,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                        height: 20,
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget cangotowork(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(

        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.2,
                    child: Text(
                      list[index].dayOfTheWeek!,
                      style: AppTextStyles.regularW400(
                        context,
                        size: 16,
                        lineHeight: 28,
                        color: AppColors.black000000,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        // onTap: () {
                        //   setState(() {
                        //     list[index].morning = !list[index].morning!;
                        //   });
                        // },
                        child: Container(
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: list[index].morning!
                                ? AppColors.grayE5E5E5
                                : AppColors.orginFFA800,
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Text(
                            'Sáng',
                            style: AppTextStyles.regularW400(
                              context,
                              size: 15,
                              lineHeight: 15,
                              color: list[index].afternoon!
                                  ? Colors.white
                                  : AppColors.shadow25,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        // onTap: () {
                        //   setState(() {
                        //     list[index].afternoon = !list[index].afternoon!;
                        //   });
                        // },
                        child: Container(
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: list[index].afternoon!
                                ? AppColors.orginFFA800
                                : AppColors.greyF6F6F6,
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Text(
                            'Chiều',
                            style: AppTextStyles.regularW500(
                              context,
                              size: 15,
                              lineHeight: 15,
                              color: list[index].afternoon!
                                  ? Colors.white
                                  : AppColors.grey666666,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        // onTap: () {
                        //   setState(() {
                        //     list[index].evening = !list[index].evening!;
                        //   });
                        // },
                        child: Container(
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: list[index].evening!
                                ? AppColors.orginFFA800
                                : AppColors.greyF6F6F6,
                          ),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            vertical: 13,
                          ),
                          child: Text(
                            'Tối',
                            style: AppTextStyles.regularW500(
                              context,
                              size: 15,
                              lineHeight: 15,
                              color: list[index].afternoon!
                                  ? AppColors.black404040
                                  : AppColors.grey666666,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 7,
              ),
              itemCount: list.length,
            ),
            const SizedBox(
              height: 45,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ứng viên liên quan",textAlign:TextAlign.left,style: AppTextStyles.regularW500(context, size: 16,color: AppColors.black000000),),
                const SizedBox(height: 10,),
                Container(
                  height: 400,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 40,
                      ),
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                              blurRadius: 4,
                              color: AppColors.black000000.withOpacity(0.25),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.WhiteFFFFFF,
                        ),
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(context, "/jobdtails"),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                    'https://www.mintformations.co.uk/blog/wp-content/uploads/2020/05/shutterstock_583717939.jpg',
                                    height: 79,
                                    width: 79,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Văn Lộc',
                                        style: AppTextStyles.regularW500(
                                          context,
                                          size: 16,
                                          lineHeight: 20,
                                          color: AppColors.black404040,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Thợ Hồ',
                                        style: AppTextStyles.regularW400(
                                          context,
                                          size: 12,
                                          lineHeight: 20,
                                          color: AppColors.black404040,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 11,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(children: [
                                SvgPicture.asset(Res.diachi),
                                const SizedBox(width: 13.34,),
                                Text("Hà Nội, Hồ Chí Minh")
                              ],)
                            ],
                          ),
                        ),
                      ),
                      itemCount: 5,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 20,
                          height: 20,
                        );
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
