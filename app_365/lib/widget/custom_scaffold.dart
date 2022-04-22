import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/theme/app_colors.dart';
import '../common/theme/app_text_style.dart';
import '../res.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget? body;
  final List<Widget>? action;
  final bool showBtnBack;
  final VoidCallback? opPressBtnBack;

  const CustomScaffold({Key? key, required this.title, this.body, this.action, this.showBtnBack = true, this.opPressBtnBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: showBtnBack
            ? IconButton(
                onPressed: () => opPressBtnBack ?? Navigator.pop(context),
                icon: SvgPicture.asset(
                  Res.back,
                  color: Colors.white,
                ),
              )
            : const SizedBox.shrink(),
        title: Text(
          title,
          style: AppTextStyles.regularW700(
            context,
            size: 16,
            lineHeight: 18.75,
            color: Colors.white,
          ),
        ),
        actions: action,
        elevation: 0,
        centerTitle: false,
        backgroundColor: AppColors.primary,
      ),
      body: body ?? Container(),
    );
  }
}
