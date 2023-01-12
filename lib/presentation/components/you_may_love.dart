import 'package:book_lover/config/constants/local_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';
import 'book_picture.dart';

class YouMayLoveComponent extends StatelessWidget {
  const YouMayLoveComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: AppColors.text1,
      padding: EdgeInsets.symmetric(vertical: 60.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("You may love", style: AppTextStyles.h1.copyWith(color: AppColors.bgColor)),
                Text(
                  "Latest books come from your favourite topics",
                  style: AppTextStyles.h5.copyWith(color: AppColors.text3),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 235.h,
          //   child: ListView.builder(
          //     itemCount: books.length,
          //     scrollDirection: Axis.horizontal,
          //     physics: const BouncingScrollPhysics(),
          //     padding: EdgeInsets.only(left: 24.w),
          //     itemBuilder: (context, index) {
          //       return Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           BookPicture(
          //             width: 108.w,
          //             height: 166.h,
          //             borderRadius: [4.r, 8.r, 8.r, 4.r],
          //             imagePath: books[index].image,
          //           ),
          //           Padding(
          //             padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
          //             child: Text(
          //               books[index].category,
          //               style: AppTextStyles.h5.copyWith(color: AppColors.text2),
          //             ),
          //           ),
          //           Text(
          //             books[index].author,
          //             style: AppTextStyles.h5.copyWith(color: AppColors.border),
          //           ),
          //         ],
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
