import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/theme/app_colors.dart';
import '../common/theme/app_text_style.dart';

class OutLineButtonV2 extends StatelessWidget {
  final String title,title1;
  final VoidCallback? onPressed;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;

  const OutLineButtonV2({Key? key, required this.title, this.onPressed, this.radius, this.padding, this.borderColor, required this.title1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: AppColors.WhiteFFFFFF,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 130,
            height: 40,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                elevation: 4,
                side: BorderSide(
                  color: borderColor ?? AppColors.primary,
                  width: 1,
                ),
                primary: Colors.white,
                padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: radius ?? BorderRadius.circular(20),
                ),
              ),
              child: Text(
                title,
                style: AppTextStyles.regularW500(
                  context,
                  size: 16,
                  lineHeight: 18.75,
                  color: borderColor ?? AppColors.primary,
                ),
              ),
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: 130,
            height: 40,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                elevation: 4,
                side: BorderSide(
                  color: borderColor ?? AppColors.primary,
                  width: 1,
                ),
                primary: Colors.white,
                padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: radius ?? BorderRadius.circular(20),
                ),
              ),
              child: Text(
                title1,
                style: AppTextStyles.regularW500(
                  context,
                  size: 16,
                  lineHeight: 18.75,
                  color: borderColor ?? AppColors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
