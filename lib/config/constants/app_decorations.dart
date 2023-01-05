import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppDecorations {
  static BoxDecoration defDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    // color: AppColors.textColor.shade2,
  );

  static ButtonStyle buttonStyle(
      {double? borderRadius,
      Color? bgColor,
      EdgeInsets? padding,
      BorderSide? border,
      Size? size,
      Color? overlayColor}) {
    return ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
          side: border ?? BorderSide.none,
        ),
      ),
      fixedSize: MaterialStatePropertyAll(size),
      backgroundColor: MaterialStateProperty.all(bgColor ?? AppColors.mainColor),
      overlayColor: MaterialStateProperty.all(overlayColor ?? AppColors.mainColor.withOpacity(.8)),
      padding: MaterialStateProperty.all(padding),
    );
  }
}
