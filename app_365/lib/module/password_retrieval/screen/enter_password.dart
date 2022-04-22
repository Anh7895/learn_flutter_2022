import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/outline_textfield.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 44),
                 SizedBox(
                  width: 130,
                  height: 42.16,
                  child: Image.asset(Res.logo),
                ),
                const SizedBox(
                  height: 106.84,
                ),
                const OutlineTextField(hintText: "Nhập lại mật khẩu"),
                const SizedBox(
                  height: 15,
                ),
                const OutlineTextField(hintText: "Xác nhận mật khẩu"),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ColorButton(
                    title: "Xác nhận",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => _dialogEnter(context),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 86,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 38),
                  width: 300,
                  height: 268,
                  child: Image.asset(Res.forgot),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _dialogEnter(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Lấy lại mật khẩu thành công",
              style: AppTextStyles.regularW700(
                context,
                size: 22,
              ),
            ),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(Res.dialog_tich)),
            Text(
              "Bạn có thể đăng nhập bằng mật khẩu vừa thay đổi",
              textAlign: TextAlign.center,
              style: AppTextStyles.regularW400(context,
                  size: 18, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
