import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.readOnly = false,
  }) : super(key: key);

  final TextEditingController controller;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      style: AppTextStyles.h5,
      cursorColor: AppColors.text1,
      decoration: InputDecoration(
        hintText: 'Enter keyword',
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
    );
  }
}
