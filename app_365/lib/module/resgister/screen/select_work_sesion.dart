import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/restiger/time/time.dart';
import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../widget/color_button.dart';

class SelectWorkSession extends StatefulWidget {
  const SelectWorkSession({Key? key}) : super(key: key);

  @override
  State<SelectWorkSession> createState() => _SelectWorkSessionState();
}

class _SelectWorkSessionState extends State<SelectWorkSession> {
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
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 59),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Buổi có thể đi làm",
                  style: AppTextStyles.regularW700(context, size: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
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
                              color: AppColors.blackc4c4c4,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  list[index].morning = !list[index].morning!;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: list[index].morning!
                                    ? AppColors.blackc4c4c4
                                    : AppColors.yellowFFA800,
                                ),
                                width: width * 0.24,

                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 13),
                                child: Text(
                                  'Sáng',
                                  style: AppTextStyles.regularW400(
                                    context,
                                    size: 15,
                                    lineHeight: 15,
                                    color: list[index].morning!
                                        ? Colors.white
                                        : AppColors.blue307DF1,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  list[index].afternoon = !list[index].afternoon!;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                  color: list[index].afternoon!
                                      ? AppColors.blackc4c4c4
                                      : AppColors.yellowFFA800,
                                ),
                                width: width * 0.24,
                                
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 13),
                                child: Text(
                                  'Chiều',
                                  style: AppTextStyles.regularW400(
                                    context,
                                    size: 15,
                                    lineHeight: 15,
                                    color: list[index].afternoon!
                                        ? Colors.white
                                        : AppColors.blue307DF1,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  list[index].evening = !list[index].evening!;
                                });
                              },
                              child: Container(
                                width: width * 0.24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: list[index].evening!
                                      ? AppColors.blackc4c4c4
                                      : AppColors.yellowFFA800,
                                ),
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 13,
                                ),
                                child: Text(
                                  'Tối',
                                  style: AppTextStyles.regularW400(
                                    context,
                                    size: 15,
                                    lineHeight: 15,
                                    color: list[index].evening!
                                        ? Colors.white
                                        : AppColors.blue307DF1,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 7,
                  ),
                  itemCount: list.length,
                ),
                const SizedBox(
                  height: 20,
                ),
                ColorButton(
                  title: "Hoàn tất",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
