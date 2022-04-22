import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/theme/app_colors.dart';
import '../common/theme/app_text_style.dart';

class OutLineButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;

  const OutLineButton({Key? key, required this.title, this.onPressed, this.radius, this.padding, this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 130,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                elevation: 4,
                side: BorderSide(
                  color: borderColor ?? AppColors.primary,
                  width: 1,
                ),
                primary: Colors.blue,
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
                  color: borderColor ?? AppColors.WhiteFFFFFF,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
