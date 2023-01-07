import 'package:book_lover/presentation/components/book_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

// ignore: must_be_immutable
class BookItem extends StatelessWidget {
  BookItem({
    Key? key,
    this.bottomBorder = true,
  }) : super(key: key);
  bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 24.h, right: 2.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookPicture(imagePath: Assets.images.book1),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My life as an ice cream...", style: AppTextStyles.h3),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h, bottom: 12.h),
                      child: Text("Adventure", style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
                    ),
                    Text("Adib Khorram", style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
                  ],
                ),
              ),
              IconButton(
                splashRadius: 20.r,
                onPressed: () {},
                icon: SvgPicture.asset(Assets.icons.more, color: AppColors.text3),
              ),
              SizedBox(width: 5.w),
            ],
          ),
        ),
        if(bottomBorder)Container(
          height: 1.h,
          width: double.maxFinite,
          color: AppColors.border,
          margin: EdgeInsets.only(right: 24.w, bottom: 24.h),
        ),
      ],
    );
  }
}
