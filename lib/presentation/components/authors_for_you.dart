import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class AuthorsForYouComponent extends StatelessWidget {
  const AuthorsForYouComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.trendingBgColor,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 60.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Authors for you", style: AppTextStyles.h1),
                Text(
                  "Picked from your favorite categories",
                  style: AppTextStyles.h5.copyWith(color: AppColors.text2),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 170.h,
            child: ListView.separated(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 24.w),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 54.r,
                      foregroundImage: AssetImage(Assets.images.author1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, bottom: 8.h),
                      child: Text(
                        'David Johnson',
                        style: AppTextStyles.h3,
                      ),
                    ),
                    Text(
                      'Horror',
                      style: AppTextStyles.h6.copyWith(color: AppColors.text2),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 24.w),
            ),
          ),
        ],
      ),
    );
  }
}
