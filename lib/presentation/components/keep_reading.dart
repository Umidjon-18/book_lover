import 'package:book_lover/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';
import '../../config/constants/local_data.dart';
import 'book_picture.dart';

class KeepReadingComponent extends StatelessWidget {
  const KeepReadingComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 48.h, bottom: 60.h, left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Keep reading...", style: AppTextStyles.h1),
          Text("The books you’re viewing currenly", style: AppTextStyles.h5),
          SizedBox(height: 40.h),
          ...List.generate(
            3,
            (index) => KeepReadingBookItem(bookModel: books[index]),
          ),
        ],
      ),
    );
  }
}

class KeepReadingBookItem extends StatelessWidget {
  const KeepReadingBookItem({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h, right: 2.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookPicture(
            imagePath: bookModel.image,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200.w,
                  child: Text(bookModel.name, style: AppTextStyles.h3),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 12.h),
                  child: Text(bookModel.author, style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: const LinearProgressIndicator(
                    value: .6,
                    color: AppColors.mainColor,
                    backgroundColor: AppColors.border,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            splashRadius: 20.r,
            onPressed: () {},
            icon: SvgPicture.asset(Assets.icons.more, color: AppColors.text3),
          ),
          SizedBox(width: 5.w)
        ],
      ),
    );
  }
}
