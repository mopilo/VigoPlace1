import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vigoplace1/core/values/app_colors.dart';
import 'package:vigoplace1/core/widget/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final Function click;
  final Color color;
  final Color textColor;
  final Color borderColor;

  const ButtonWidget(
      {Key? key,
      this.text,
      required this.click,
      this.textColor = AppColors.primary,
      required this.color,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      height: 48.h,
      child: TextButton(
          onPressed: () {
            click();
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              alignment: Alignment.center,
              backgroundColor: MaterialStateProperty.all(color),
              // overlayColor: MaterialStateProperty.all(AppColors.primary),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  side: BorderSide(width: 1, color: borderColor)))),
          child: Center(
            child: TextWidget(
              text: text,
              height: 1.2,
              appcolor: textColor,
              align: TextAlign.center,
              size: 14.sp,
            ),
          )),
    );
  }
}
