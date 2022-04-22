import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../../common/theme/app_colors.dart';
import '../../../../res.dart';
import '../../candidate_view/candidate_aplly_screen.dart';
import 'home_page_employer_screen.dart';
import 'recruitment_screen.dart';

class HomeEmployerScreen extends StatefulWidget {

  const HomeEmployerScreen({Key? key}) : super(key: key);

  @override
  State<HomeEmployerScreen> createState() => _HomeEmployerScreenState();
}

class _HomeEmployerScreenState extends State<HomeEmployerScreen> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: [
         const HomePageEmployerScreen(),
        const RecruitmentScreen(),
        const CandidateApplyScreen(),
      ].elementAt(_selectIndex),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          currentIndex: _selectIndex,
          onTap: (value) {
            setState(() {
              _selectIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Res.Group,
                  height: 24,
                  width: 24,
                ),
                label: 'Trang Chủ',
                activeIcon: SizedBox(
                  width: 52,
                  height: 20,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -42,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(color: AppColors.grayc4c4c4, shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                          top: -27,
                          child: SvgPicture.asset(
                            Res.Group,
                            height: 30,
                            width: 30,
                            color: AppColors.primary,
                          ))
                    ],
                  ),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Res.hoso,
                  height: 24,
                  width: 24,
                ),
                label: 'Tuyển dụng',
                activeIcon: SizedBox(
                  width: 52,
                  height: 20,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -42,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(color: AppColors.grayc4c4c4, shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                          top: -27,
                          child: SvgPicture.asset(
                            Res.hoso,
                            height: 30,
                            width: 30,
                            color: AppColors.primary,
                          ))
                    ],
                  ),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Res.candidate1,
                  height: 24,
                  width: 24,
                ),
                label: 'Ứng viên',
                activeIcon: SizedBox(
                  width: 52,
                  height: 20,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -42,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(color: AppColors.grayc4c4c4, shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                          top: -27,
                          child: SvgPicture.asset(
                            Res.mess,
                            height: 30,
                            width: 30,
                            color: AppColors.primary,
                          ))
                    ],
                  ),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Res.mess,
                  height: 24,
                  width: 24,
                ),
                label: 'Trò Chuyện',
                activeIcon: SizedBox(
                  width: 52,
                  height: 20,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -42,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(color: AppColors.grayc4c4c4, shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                          top: -27,
                          child: SvgPicture.asset(
                            Res.mess,
                            height: 30,
                            width: 30,
                            color: AppColors.primary,
                          ))
                    ],
                  ),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Res.mess,
                  height: 24,
                  width: 24,
                ),
                label: 'Quản Lý',
                activeIcon: SizedBox(
                  width: 52,
                  height: 20,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -42,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(color: AppColors.grayc4c4c4, shape: BoxShape.circle),
                        ),
                      ),
                      Positioned(
                          top: -27,
                          child: SvgPicture.asset(
                            Res.mess,
                            height: 30,
                            width: 30,
                            color: AppColors.primary,
                          ))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );

  }
}
