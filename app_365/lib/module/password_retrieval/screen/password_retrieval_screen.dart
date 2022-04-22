import 'package:flutter/material.dart';

import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/outline_textfield.dart';

class PasswordRetrievalScreen extends StatelessWidget {
  const PasswordRetrievalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(Res.login),
          alignment: Alignment.topLeft,
        ),
        color: Colors.white,
      ),
      child: Scaffold(
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 59),
                alignment: Alignment.center,
                child: Text(
                  "Lấy lại mật khẩu",
                  style: AppTextStyles.regularW700(context,
                      size: 30, color: Colors.white),
                )),
            const SizedBox(
              height: 99,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: OutlineTextField(hintText: "Nhập email")),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 100,
              height: 40,
              child: ColorButton(
                title: "Gửi",
                onPressed: (){
                  Navigator.pushNamed(context, "/otp_authentication");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
