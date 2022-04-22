import 'package:flutter/material.dart';
import 'package:learn_flutter_2022/screens/learn_mi/learn/home/home_screen.dart';
import 'package:learn_flutter_2022/screens/learn_mi/learn/login/login_screen.dart';
import '../../../../share_pref.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  void checkLogic(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    SharePref sharePref = SharePref();
    bool isLogin = await sharePref.isLogin();
    Widget nextScreen;
    if (isLogin) {
      nextScreen = HomeScreen();
    } else {
      nextScreen = const LoginScreen();
    }
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => nextScreen));
  }

  @override
  Widget build(BuildContext context) {
    checkLogic(context);

    return const Scaffold(
      body: Center(
        child: Text('Hello '),
      ),
    );
  }
}
