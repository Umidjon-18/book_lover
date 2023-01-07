import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import 'book_item.dart';

class TrendingBooksComponent extends StatelessWidget {
  const TrendingBooksComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      color: AppColors.trendingBgColor,
      padding: EdgeInsets.only(top: 60.h, bottom: 60.h, left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Trending books", style: AppTextStyles.h1),
          Text("Picked from most read books", style: AppTextStyles.h5),
          SizedBox(height: 40.h),
          ...List.generate(5, (index) => BookItem(bottomBorder: index != 4)),
        ],
      ),
    );
  }
}
