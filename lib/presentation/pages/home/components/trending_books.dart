import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../components/error.dart';
import '../bloc/trending_books/trending_books_cubit.dart';
import '../bloc/trending_books/trending_books_state.dart';
import '../../../components/book_item.dart';
import '../../../components/book_item_loading.dart';

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
          BlocBuilder<TrendingBooksCubit, TrendingBooksState>(
            builder: (context, state) {
              return state.map(
                initial: (value) {
                  context.read<TrendingBooksCubit>().loadTrendingBooks();
                  return const BookItemLoading(itemCount: 3);
                },
                loading: (value) => const BookItemLoading(itemCount: 3),
                loaded: (value) => ListView.builder(
                  itemCount: (value.trendingBooks.length / 10).round() + 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => BookItem(bookModel: value.trendingBooks[index]),
                ),
                error: (value) => ErrorComponent(errorReason: value.error),
              );
            },
          ),
        ],
      ),
    );
  }
}
