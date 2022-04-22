import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../common/theme/app_colors.dart';
import '../common/theme/app_dimens.dart';
import '../common/theme/app_text_style.dart';

class OutlineTextField extends StatefulWidget {
  final String? title;
  final String hintText;
  final TextEditingController? textEditingController;
  final VoidCallback? onPressed;
  final VoidCallback? onTapTextField;
  final bool isPassword;
  final bool isTitle;
  final bool isShowIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final Color colorBorder;
  final Color colorHintText;
  final String? iconSuffix;
  final Color colorIcon;
  final bool obligatory;
  final bool readOnly;
  final int? maxLength;
  final int maxLine;
  final FocusNode? focus;
  final List<TextInputFormatter>? inputFormatters;
  final Key? form;
  final TextAlign textAlign;
  final BorderRadius? radius;
  final EdgeInsetsGeometry? contentPadding;
  final bool require;

  const OutlineTextField({
    Key? key,
    this.isPassword = false,
    this.keyboardType = TextInputType.multiline,
    this.colorBorder = AppColors.primary,
    this.iconSuffix,
    this.onChanged,
    this.textEditingController,
    required this.hintText,
    this.onPressed,
    this.colorIcon = AppColors.primary,
    this.isShowIcon = false,
    this.obligatory = false,
    this.isTitle = true,
    this.colorHintText = AppColors.black404040,
    this.focus,
    this.readOnly = false,
    this.onTapTextField,
    this.maxLength,
    this.maxLine = 1,
    this.inputFormatters,
    this.form,
    this.validator,
    this.textAlign = TextAlign.start,
    this.radius,
    this.contentPadding,
    this.title,
    this.require = false,
  }) : super(key: key);

  @override
  State<OutlineTextField> createState() => _OutlineTextFieldState();
}

class _OutlineTextFieldState extends State<OutlineTextField> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.form,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title != null
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: widget.title!,
                      style: AppTextStyles.regularW500(
                        context,
                        size: 18,
                        lineHeight: 28,
                        color: AppColors.black404040,
                      ),
                      children: [
                        TextSpan(
                          text: widget.require ? ' *' : '',
                          style: AppTextStyles.regularW500(
                            context,
                            size: 16,
                            lineHeight: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          TextFormField(
              autocorrect: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: widget.validator,
              inputFormatters: widget.inputFormatters,
              maxLength: widget.maxLength,
              onTap: widget.onTapTextField,
              readOnly: widget.readOnly,
              focusNode: widget.focus,
              maxLines: widget.maxLine,
              obscureText: widget.isPassword,
              onChanged: widget.onChanged,
              keyboardType: widget.keyboardType,
              controller: widget.textEditingController,
              textAlign: widget.textAlign,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.black404040),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: widget.hintText,
                hintStyle: AppTextStyles.regularW300(
                  context,
                  size: AppDimens.textSize16,
                  color: widget.colorHintText,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: widget.colorBorder,
                  ),
                  borderRadius: widget.radius ?? BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: widget.colorBorder,
                  ),
                  borderRadius: widget.radius ?? BorderRadius.circular(5),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: widget.colorBorder,
                  ),
                  borderRadius: widget.radius ?? BorderRadius.circular(5),
                ),
                contentPadding: widget.contentPadding ??
                    EdgeInsets.symmetric(
                      horizontal: 21,
                      vertical: 10,
                    ),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                isDense: true,
                suffixIconConstraints: const BoxConstraints(),
                suffixIcon: widget.iconSuffix != null
                    ? InkWell(
                        child: Container(
                          padding: EdgeInsets.only(
                            right: 15,
                          ),
                          child: SvgPicture.asset(
                            widget.iconSuffix!,
                            color: widget.colorIcon,
                          ),
                        ),
                        onTap: widget.onPressed,
                      )
                    : null,
              )),
        ],
      ),
    );
  }
}
