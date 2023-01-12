import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/presentation/components/book_item_loading.dart';
import 'package:book_lover/presentation/pages/home/bloc/keep_reading_cubit.dart';
import 'package:book_lover/presentation/pages/home/bloc/keep_reading_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../../config/constants/assets.dart';
import '../../../components/book_picture.dart';

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
          BlocBuilder<KeepReadingCubit, KeepReadingState>(
            builder: (context, state) {
              return state.map(
                initial: (value) {
                  context.read<KeepReadingCubit>().loadBooks();
                  return const BookItemLoading(itemCount: 3);
                },
                loading: (value) => const BookItemLoading(itemCount: 3),
                loaded: (value) => ListView.builder(
                  itemCount: value.keepReadingBooks.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => KeepReadingBookItem(bookModel: value.keepReadingBooks[index]),
                ),
                error: (value) => const BookItemLoading(itemCount: 3),
              );
            },
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
            imagePath: bookModel.images.first.href,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200.w,
                  child: Text(bookModel.metadata.title, style: AppTextStyles.h3),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 12.h),
                  child: Text(bookModel.metadata.author.first.name,
                      style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
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
