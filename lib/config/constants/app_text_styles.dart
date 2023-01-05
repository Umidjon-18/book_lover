import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = 'Roboto';

  static TextStyle title = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 32.sp,
      height: 1.5,
      color: AppColors.text1);

  static TextStyle h1 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 20.sp,
      height: 7/5,
      color: AppColors.text1);

  static TextStyle h2 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 16.sp,
      height: 1.5,
      color: AppColors.text1);

  static TextStyle h3 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 14.sp,
      height: 12/7,
      color: AppColors.text1);

  static TextStyle h4 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      height: 1.5,
      color: AppColors.text1);

  static TextStyle h5 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      height: 10/7,
      color: AppColors.text1);

  static TextStyle h6 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
      height: 4/3,
      color: AppColors.text1);


}
