import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/theme/app_text_style.dart';
import '../../../common/utils.dart';
import '../../../common/validate.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/outline_textfield.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class LoginScreen extends StatefulWidget {
  //final String type;
  const LoginScreen({Key? key,
    //required this.type
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginBloc? loginBloc;
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  final _formEmail = GlobalKey<FormState>();
  final _formPassword = GlobalKey<FormState>();

  @override
  void initState() {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage(Res.login),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter),
        color: Colors.white,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Text Button
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 59),
                    child: Text(
                      "Đăng Nhập",
                      style: AppTextStyles.regularW700(context,
                          size: 30, color: Colors.white, lineHeight: 35),
                    ),
                  ),
                  const SizedBox(
                    height: 99,
                  ),
                  // Textfield Nhap so dien thoai
                  OutlineTextField(
                    hintText: "Nhập email",
                    textAlign: TextAlign.center,
                    textEditingController: txtEmail,
                    form: _formEmail,
                    validator: Validate.validateEmail,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Textfield Nhap mat khau
                  OutlineTextField(
                    hintText: "Nhập mật khẩu",
                    textAlign: TextAlign.center,
                    textEditingController: txtPassword,
                    form: _formPassword,
                    validator: Validate.validatePassword,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // text quen mat khau
                  InkWell(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Quên mật khẩu",
                          style: AppTextStyles.regularW400(context,
                              size: 13, color: Colors.black),
                        )),
                    onTap: () {
                      Navigator.pushNamed(context, "/password_retrieval");
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // button dang nhap
                  BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      if (state is LoginFailure) {
                        Utils.showToast(state.error);
                      } else if (state is LoginSuccess) {
                        Utils.showToast(state.message);
                        Navigator.pushNamed(context, "/home_employer");
                      }
                    },
                    builder: (context, state) {
                      if (state is LoginLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ColorButton(
                        title: "Đăng nhập",
                        onPressed: () {
                          if (_formEmail.currentState!.validate() &&
                              _formPassword.currentState!.validate()) {
                            loginBloc!.add(
                              LoginCandidateButtonPressed(
                                  txtEmail.text, txtPassword.text),
                            );
                          } else {
                            _formEmail.currentState!.validate();
                            _formPassword.currentState!.validate();
                          }
                        },
                        radius: BorderRadius.circular(5),
                        padding: const EdgeInsets.fromLTRB(12, 11, 11, 10),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // text button dang ky ngay
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bạn chưa có tài khoản?",
                        style: AppTextStyles.regularW400(context,
                            size: 15, color: Colors.black),
                      ),
                      InkWell(
                        child: Text(
                          " Đăng ký ngay",
                          style: AppTextStyles.regularW400(context, size: 20),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/register_candidate");
                        },
                      ),
                    ],
                  ),
                  // image login
                  SizedBox(
                    width: 375,
                    height: 200,
                    child: Image.asset(Res.login2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
