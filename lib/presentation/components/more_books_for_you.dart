import 'package:book_lover/config/constants/local_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import 'book_item.dart';
import 'primary_button.dart';

class MoreBooksForYouComponent extends StatelessWidget {
  const MoreBooksForYouComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text("More books for you", style: AppTextStyles.h1),
                Text(
                  "Picked from your favorite topics",
                  style: AppTextStyles.h5.copyWith(color: AppColors.text2),
                ),
              ],
            ),
          ),
          ...List.generate(
            10,
            (index) => Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: BookItem(bookModel: books[index],bottomBorder: index != 9),
            ),
          ),
          Center(
            child: PrimaryButton(onPressed: () {}, width: 327.w, text: "Load more"),
          ),
        ],
      ),
    );
  }
}
