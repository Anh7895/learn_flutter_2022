import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/theme/app_colors.dart';
import '../common/theme/app_text_style.dart';

class ColorButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  const ColorButton({Key? key, required this.title, this.onPressed, this.radius, this.padding, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 4,
        primary: color ?? AppColors.primary,
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
          color: Colors.white,
        ),
      ),
    );
  }
}
