// import 'package:flutter/material.dart';
// import 'app_colors.dart';
// import 'dimensions.dart';
//
// ThemeData lightTheme() => ThemeData(
//       primaryColor: AppColors.primary,
//       cardColor: AppColors.white,
//       backgroundColor: AppColors.white,
//       scaffoldBackgroundColor: AppColors.almostWhite,
//       hintColor: AppColors.lightGrey,
//       textTheme: _textTheme(isDark: false),
//     );
//
// ThemeData darkTheme() => ThemeData(
//       primaryColor: AppColors.primary,
//       cardColor: AppColors.darkGrey,
//       backgroundColor: AppColors.darkGrey,
//       scaffoldBackgroundColor: AppColors.heavyDarkGrey,
//       hintColor: AppColors.lightGrey,
//       textTheme: _textTheme(isDark: true),
//     );
//
// TextTheme _textTheme({required bool isDark}) => TextTheme(
//       headline6: _titleTextStyle(isDark: isDark),
//       subtitle2: _subtitleTextStyle(isDark: isDark),
//       bodyText2: _bodyText2Style(isDark: isDark),
//       button: _buttonTextStyle(isDark: isDark),
//       bodyText1: _bodyText1Style(isDark: isDark),
//       caption: _captionTextStyle,
//     );
//
// TextStyle _titleTextStyle({required bool isDark}) => TextStyle(
//       color: isDark ? AppColors.white : AppColors.black,
//       fontWeight: FontWeight.w700,
//       fontSize: Dimensions.titleTextSize,
//     );
//
// TextStyle _subtitleTextStyle({required bool isDark}) => TextStyle(
//       color: isDark ? AppColors.white : AppColors.black,
//       fontWeight: FontWeight.w700,
//       fontSize: Dimensions.subtitleTextSize,
//     );
//
// TextStyle _bodyText2Style({required bool isDark}) => TextStyle(
//       color: isDark ? AppColors.white : AppColors.black,
//       fontSize: Dimensions.bodyTextSize,
//     );
//
// const _captionTextStyle = TextStyle(
//   color: AppColors.lightGrey,
//   fontSize: Dimensions.smallTextSize,
// );
//
// TextStyle _buttonTextStyle({required bool isDark}) => TextStyle(
//       color: isDark ? AppColors.white : AppColors.black,
//       fontWeight: FontWeight.w600,
//       fontSize: Dimensions.bodyTextSize,
//     );
//
// TextStyle _bodyText1Style({required bool isDark}) => TextStyle(
//       color: isDark ? AppColors.white : AppColors.black,
//       fontWeight: FontWeight.w500,
//       fontSize: Dimensions.bodyBigTextSize,
//     );
//
// extension ThemeGetter on BuildContext {
//   TextStyle? titleStyle() => Theme.of(this).textTheme.headline6;
//
//   TextStyle? subtitleTextStyle() => Theme.of(this).textTheme.subtitle2;
//
//   TextStyle? captionTextStyle() => Theme.of(this).textTheme.caption;
//
//   TextStyle? bodyText1Style() => Theme.of(this).textTheme.bodyText1;
//
//   TextStyle? bodyText2Style() => Theme.of(this).textTheme.bodyText2;
//
//   Color primaryColor() => Theme.of(this).primaryColor;
//
//   Color backgroundColor() => Theme.of(this).backgroundColor;
//
//   Color scaffoldBackgroundColor() => Theme.of(this).scaffoldBackgroundColor;
//
//   Color errorColor() => Theme.of(this).errorColor;
//
//   Color hintColor() => Theme.of(this).hintColor;
//
//   Color? iconColor() => Theme.of(this).iconTheme.color;
//
//   Color? textColor() => Theme.of(this).textTheme.bodyText1?.color;
// }
