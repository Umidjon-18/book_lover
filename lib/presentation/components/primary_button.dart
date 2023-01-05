import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.onPressed,
    required this.width,
    required this.text,
    this.disable = false,
  });

  Function() onPressed;
  double width;
  String text;
  bool disable;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 52.h,
      elevation: 0,
      minWidth: width,
      onPressed: disable ? () {} : onPressed,
      color: disable ? AppColors.border : AppColors.mainColor,
      splashColor: AppColors.border,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      child: Text(text, style: AppTextStyles.h3.copyWith(color: disable ? AppColors.text3 : null)),
    );
  }
}
