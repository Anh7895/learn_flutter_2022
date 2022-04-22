import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../common/theme/app_text_style.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';

class OTPAuthenticationScreen extends StatelessWidget {
  const OTPAuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:  const BoxDecoration(
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
            // logo
            Container(
              width: 130,
              height: 42.16,
              margin: const EdgeInsets.fromLTRB(123, 44, 122, 106.84),
              child: Image.asset(Res.logo),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nhập mã xác thực được gửi tới email: ",
                      style: AppTextStyles.regularW400(context,
                          size: 18, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lululu@gmail.com",
                          style: AppTextStyles.regularW400(context, size: 18),
                        )),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // pinText
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 335,
                    height: 21,
                    child: Text(
                      "Mã khả dụng trong 60s",
                      style: AppTextStyles.regularW400(context,
                          size: 18, color: Colors.black),
                    ),
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      "Bạn chưa nhận được mã",
                      style: AppTextStyles.regularW400(context,
                          size: 18, color: Colors.black),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Gửi lại",
                          style: AppTextStyles.regularW400(context,
                              size: 18, color: Colors.blue),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ColorButton(
                    title: "Xác nhận",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => _dialogSuccess(context),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dialogSuccess(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical:40 ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Đăng ký thành công",
              style: AppTextStyles.regularW700(context, size: 22),
            ),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(Res.dialog_tich)),
            Text(
              "Chúc các bạn có những trải nghiệm tốt nhất với dịch vụ của chúng tôi",textAlign: TextAlign.center,
              style: AppTextStyles.regularW400(context,
                  size: 18, color: Colors.black, ),
            ),
          ],
        ),
      ),
    );
  }
}
