import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    super.key,
    required this.onChanged,
    required this.checkValue,
  });

  void Function(bool?) onChanged;
  bool checkValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: AppColors.border,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Checkbox(
        onChanged: onChanged,
        value: checkValue,
        checkColor: AppColors.text1,
        side: BorderSide.none,
        activeColor: Colors.grey,
        fillColor: MaterialStateProperty.all(AppColors.mainColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
          side: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
