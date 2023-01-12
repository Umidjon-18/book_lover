import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/presentation/components/book_picture.dart';
import 'package:book_lover/presentation/routes/routes.dart';
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
    required this.bookModel,
    this.bottomBorder = true,
  }) : super(key: key);
  bool bottomBorder;
  BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 24.h, right: 2.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookPicture(imagePath: bookModel.images[0].href),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(bookModel.metadata.title, style: AppTextStyles.h3),
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, Routes.categoryPage),
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h, bottom: 12.h),
                        child: Text(bookModel.metadata.subject.first.name, style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
                      ),
                    ),
                    Text(bookModel.metadata.author.first.name, style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
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
        if (bottomBorder)
          Container(
            height: 1.h,
            width: double.maxFinite,
            color: AppColors.border,
            margin: EdgeInsets.only(right: 24.w, bottom: 24.h),
          ),
      ],
    );
  }
}
