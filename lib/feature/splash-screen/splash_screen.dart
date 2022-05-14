import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:vigoplace1/core/util/app_string.dart';
import 'package:vigoplace1/core/values/app_colors.dart';
import 'package:vigoplace1/core/widget/button_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 20.h),
            child: Image.asset("assets/logo.png")),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Image.asset("assets/frame.png")),
        SizedBox(height: 35.h),
        GradientText(
          AppString.header,
          style: GoogleFonts.ubuntu(
            fontSize: 28.sp,
          ),
          textAlign: TextAlign.center,
          colors: const [
            Colors.blue,
            AppColors.primary,
          ],
        ),
        SizedBox(height: 20.h),
        Text(AppString.info,
            style: GoogleFonts.nunito(
              fontSize: 16.sp,
            ),
            textAlign: TextAlign.center),
        SizedBox(height: 40.h),
        ButtonWidget(
            click: () {},
            text: "Login",
            color: AppColors.primary,
            textColor: Colors.white,
            borderColor: AppColors.primary),
        SizedBox(height: 32.h),
        ButtonWidget(
            click: () {},
            text: "Sign up",
            color: Colors.white,
            borderColor: AppColors.primary)
      ]),
    ));
  }
}
