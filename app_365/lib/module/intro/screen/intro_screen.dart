import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/outline_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [Res.intro1, Res.intro2, Res.intro3];
    List<String> list1 = [
      'ĐÁP ỨNG NHU CẦU TÌM VIỆC NGAY LẬP TỨC',
      'TÌM KIẾM SÀNG LỌC ỨNG VIÊN CHẤT LƯỢNG',
      'HỖ TRỢ 24/7'
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: PageView.builder(
                itemBuilder: (context, index) => Column(children: [
                  Image.asset(list[index]),
                  const SizedBox(height: 32),
                  SizedBox(
                    child: Text(
                      list1[index],
                      style: AppTextStyles.regularW700(
                        context,
                        size: 20,
                        lineHeight: 23.44,
                        color: AppColors.primary,
                      ),
                    ),
                  ),

                  // SizedBox(height: 95),
                ]),
                itemCount: list.length,
              ),
            ),
            SizedBox(
              height: 40,
              width: 335,
              child: OutLineButton(
                title: 'Ứng viên',
                onPressed: () {
                  Navigator.pushNamed(context, "/option_intro");
                },
                radius: BorderRadius.circular(1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: 335,
              child: OutLineButton(
                padding: const EdgeInsets.symmetric(),
                title: 'Nhà Tuyển Dụng',
                onPressed: (){
                  Navigator.pushNamed(context, "/option_intro");
                },
                radius: BorderRadius.circular(1),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container())
          ],
        ),
      ),
    );
  }
}

