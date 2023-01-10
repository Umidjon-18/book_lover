import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.controller,
    this.readOnly = false,
    this.hintText = "Enter keyword"
  }) : super(key: key);

  final TextEditingController controller;
  final bool readOnly;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        readOnly: readOnly,
        style: AppTextStyles.h5,
        cursorColor: AppColors.text1,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.h5.copyWith(color: AppColors.text2),
          filled: readOnly,
          fillColor: readOnly ? AppColors.border : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
              color: readOnly ? Colors.white : AppColors.border,
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
              color: readOnly ? Colors.white : AppColors.text1,
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
