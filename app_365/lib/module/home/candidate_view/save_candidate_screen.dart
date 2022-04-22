import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/custom_scaffold.dart';
class SaveCandidateScreen extends StatelessWidget {
  const SaveCandidateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "ỨNG VIÊN TỪ ĐÃ LƯU",
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
            width: 335,
            height: 144,
            decoration: BoxDecoration(
                color: AppColors.WhiteFFFFFF,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black000000.withOpacity(0.25),
                    offset: const Offset(0,4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(width: 60,
                      height: 60,
                      child: SvgPicture.asset(Res.camera),),
                    const SizedBox(width: 15,),
                    Text("Văn lộc", style: AppTextStyles.regularW500(context, size: 18),),
                    Container(
                      margin: const EdgeInsets.fromLTRB(170, 10, 10, 30),
                      child: SvgPicture.asset(Res.delete),
                      width: 15, height: 20,),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    SvgPicture.asset(Res.vi_tri_map),
                    const SizedBox(width: 10,),
                    Text("Hà Nội, Hồ Chí Minh", style: AppTextStyles.regularW400(context, size: 12, lineHeight: 20, color: AppColors.black404040),),
                    const SizedBox(width: 80,),
                    SvgPicture.asset(Res.phone),
                    const SizedBox(width: 10,),
                    Text("0123456789", style: AppTextStyles.regularW400(context, size: 12, lineHeight: 20, color: AppColors.black404040),),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    SvgPicture.asset(Res.calendar),
                    const SizedBox(width: 10,),
                    Text("01/09/1995", style: AppTextStyles.regularW400(context, size: 12, lineHeight: 20, color: AppColors.black404040),),
                  ],
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 10,),
          itemCount: 5),
    );
  }
}
