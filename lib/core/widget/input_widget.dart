import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputWidget extends StatelessWidget {
  final String? label;
  final TextInputType? keyboard;
  final bool? obscure;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSaved;
  final int? minLines;
  final int? maxLines;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final String? hint;
  final List<TextInputFormatter>? formatter;
  final Widget? icon;
  final FocusNode? focusNode;
  final Widget? preIcon;
  final bool? enable;
  final Color? fill;
  const InputWidget(
      {Key? key,
      this.label,
      this.keyboard,
      this.obscure,
      this.controller,
      this.formatter,
      this.validator,
      this.onSaved,
      this.maxLines,
      this.minLines,
      this.labelStyle,
      this.style,
      this.hint,
      this.icon,
      this.focusNode,
      this.preIcon,
      this.enable,
      this.fill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderSide side = const BorderSide(width: 1, color: Colors.black);
    return TextFormField(
      inputFormatters: formatter,
      enabled: enable,
      focusNode: focusNode,
      // style: TextStyle(
      //     fontFamily: 'Circular',
      //     fontSize: 16,
      //   height: 0.9
      // ),
      keyboardType: keyboard,
      obscureText: obscure!,
      controller: controller,
      maxLines: maxLines!,
      minLines: minLines ?? 1,
      validator: (w) => validator!(w),
      onSaved: (w) => onSaved!(w),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: side,
          borderRadius: BorderRadius.circular(10.r),
        ),
        fillColor: fill,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: side,
          borderRadius: BorderRadius.circular(3.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: side,
          borderRadius: BorderRadius.circular(3.r),
        ),
        // errorBorder: ,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        labelText: label,
        hintStyle: labelStyle,
        hintText: hint,
        suffixIcon: icon,
        prefixIcon: preIcon,
      ),
    );
  }
}
