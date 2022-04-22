import 'package:flutter/material.dart';

import '../../../res.dart';
import '../../../widget/outline_button.dart';
import '../../login/screen/login_screen.dart';

class OptionIntroScreen extends StatelessWidget {
  const OptionIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/login.png'),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter, // vị trí box
        ),
        color: Colors.white,
      ),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 44),
                width: 130,
                height: 42,
                child: Image.asset(Res.logo),
              ),
              const SizedBox(height: 150),
              SizedBox(
                width: 300,
                height: 204.83,
                child: Image.asset(Res.login1),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                width: 335,
                height: 40,
                child: OutLineButton(
                  title: 'Đăng nhập',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  radius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 335,
                height: 40,
                child: OutLineButton(
                  title: 'Đăng Ký',
                  onPressed: () {
                    Navigator.pushNamed(context, "/register_candidate");
                  },
                  radius: BorderRadius.circular(1),
                ),
                
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 335,
                height: 40,
                child: OutLineButton(
                  title: 'Đăng nhập với tư cách khách',
                  onPressed: () {

                  },
                  radius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
