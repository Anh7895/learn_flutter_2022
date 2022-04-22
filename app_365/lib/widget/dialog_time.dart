import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/theme/app_colors.dart';
import '../common/theme/app_dimens.dart';

class DialogTime extends StatelessWidget {
  final void Function(DateTime) onChanged;
  const DialogTime({required Key key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Dialog(
      insetPadding: EdgeInsets.all(20.0),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(AppDimens.space20),
        decoration: BoxDecoration(color: AppColors.WhiteFFFFFF, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.2,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: onChanged,
                use24hFormat: false,
                minuteInterval: 1,
              ),
            ),
            SizedBox(
              height: AppDimens.padding16,
            ),
            // CustomButton2(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   title: 'Lưu',
            //   textColor: AppColors.WhiteFFFFFF,
            //   color: AppColors.primary4C5BD4,
            // ),
          ],
        ),
      ),
    );
    ;
  }
}