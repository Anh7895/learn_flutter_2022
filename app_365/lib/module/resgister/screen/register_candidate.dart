import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/app_colors.dart';
import '../../../common/theme/app_text_style.dart';
import '../../../common/utils.dart';
import '../../../common/validate.dart';
import '../../../res.dart';
import '../../../widget/color_button.dart';
import '../../../widget/outline_textfield.dart';
import '../bloc/register_bloc.dart';
import '../bloc/register_state.dart';

class RegisterCandidateScreen extends StatefulWidget {
  const RegisterCandidateScreen({Key? key}) : super(key: key);

  @override
  State<RegisterCandidateScreen> createState() =>
      _RegisterCandidateScreenState();
}

class _RegisterCandidateScreenState extends State<RegisterCandidateScreen> {
  RegisterBloc? registerBloc;

  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtRePassword = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtCity = TextEditingController();
  TextEditingController txtDistrict = TextEditingController();
  TextEditingController txtJob = TextEditingController();
  TextEditingController txtWorkplace = TextEditingController();
  TextEditingController txtDesiredProfession = TextEditingController();
  TextEditingController txtDay = TextEditingController();

  final _formUserName = GlobalKey<FormState>();
  final _formEmail = GlobalKey<FormState>();
  final _formPhone = GlobalKey<FormState>();
  final _formPassword = GlobalKey<FormState>();
  final _formRePassword = GlobalKey<FormState>();
  final _formAddress = GlobalKey<FormState>();
  final _formJob = GlobalKey<FormState>();
  final _formWorkplace = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    registerBloc = BlocProvider.of<RegisterBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 59,
              ),
              Text(
                "????ng k?? ???ng vi??n",
                style: AppTextStyles.regularW700(context, size: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                " Nh???p ?????y ????? th??ng tin ????? ????ng k?? ",
                style: AppTextStyles.regularW400(context, size: 14),
              ),
              const SizedBox(height: 20),
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.blackc4c4c4,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
                child: SvgPicture.asset(
                  Res.camera,
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              OutlineTextField(
                hintText: "H??? v?? t??n",
                textEditingController: txtUserName,
                form: _formUserName,
                validator: Validate.validateName,
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "S??? ??i???n tho???i",
                textEditingController: txtPhone,
                form: _formPhone,
                validator: Validate.validatePhone,
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "?????a ch??? email",
                textEditingController: txtEmail,
                form: _formEmail,
                validator: Validate.validateEmail,
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "M???t kh???u",
                textEditingController: txtPassword,
                form: _formPassword,
                validator: (value) => Validate.validatePassword(value),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "Nh???p l???i m???t kh???u",
                textEditingController: txtRePassword,
                form: _formRePassword,
                validator: (value) =>
                    Validate.validateNewPassword(value, txtPassword.text),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "?????a ch???",
                textEditingController: txtAddress,
                form: _formAddress,
                validator: Validate.validateNotEmpty,
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "T???nh th??nh",
                iconSuffix: Res.right_arrow,
                readOnly: true,
                onPressed: () {
                  Navigator.pushNamed(context, "/select_city");
                },
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "Qu???n huy???n",
                iconSuffix: Res.right_arrow,
                readOnly: true,
                onPressed: () {
                  Navigator.pushNamed(context, "/select_district");
                },
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "C??ng vi???c mong mu???n",
                textEditingController: txtJob,
                form: _formJob,
                validator: (value) => Validate.validateNotEmpty(value),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "N??i l??m vi???c mong mu???n",
                textEditingController: txtWorkplace,
                form: _formWorkplace,
                validator: (value) => Validate.validateNotEmpty(value),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "Ng??nh ngh?? mong mu???n",
                iconSuffix: Res.right_arrow,
                readOnly: true,
                onPressed: () {
                  Navigator.pushNamed(context, "/select_job");
                },
              ),
              const SizedBox(
                height: 10,
              ),
              OutlineTextField(
                hintText: "Bu???i c?? th??? ??i l??m",
                iconSuffix: Res.right_arrow,
                readOnly: true,
                onPressed: () {
                  Navigator.pushNamed(context, "/select_work_session");
                },
              ),
              const SizedBox(
                height: 40,
              ),
              BlocConsumer<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                if (state is RegisterLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return SizedBox(
                  width: 100,
                  height: 40,
                  child: ColorButton(
                    title: "X??c nh???n",
                    onPressed: () {
                      if (_formUserName.currentState!.validate() &&
                          _formWorkplace.currentState!.validate() &&
                          _formJob.currentState!.validate() &&
                          _formAddress.currentState!.validate() &&
                          _formPassword.currentState!.validate() &&
                          _formRePassword.currentState!.validate() &&
                          _formPhone.currentState!.validate() &&
                          _formPhone.currentState!.validate()) {
                        //registerBloc!.add();
                      } else {
                        _formUserName.currentState!.validate();
                        _formWorkplace.currentState!.validate();
                        _formJob.currentState!.validate();
                        _formAddress.currentState!.validate();
                        _formPassword.currentState!.validate();
                        _formRePassword.currentState!.validate();
                        _formPhone.currentState!.validate();
                        _formPhone.currentState!.validate();
                      }
                    },
                  ),
                );
              }, listener: (context, state) {
                if (state is RegisterFailure) {
                  Utils.showToast(state.error);
                } else if (state is RegisterSuccess) {
                  Utils.showToast(state.message);
                  Navigator.pushNamed(context, "/otp_authentication");
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
