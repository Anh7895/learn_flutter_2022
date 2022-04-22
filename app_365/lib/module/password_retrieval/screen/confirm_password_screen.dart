import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/outline_textfield.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(Res.login),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        color: Colors.white,
      ),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 59),
            Align(
              alignment: Alignment.topCenter,
              child: Text("Lấy lại mật khẩu", style: AppTextStyles.regularW700(context, size: 30, color: Colors.white),),
            ),
            const SizedBox(height: 99,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
                child: OutlineTextField(hintText: "Nhập email")),
            const SizedBox(height: 40,),
            SizedBox(
              width: 100,
              height: 40,
              child: ColorButton(title: "Gửi", onPressed: (){
                Navigator.pushNamed(context, "/otp_authentication");
              },),
            ),
            const SizedBox(height: 86,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 38),
              width: 300,
              height: 268,
              child: Image.asset(Res.forgot),
            )
          ],
        ),
      ),
    );
  }
}
