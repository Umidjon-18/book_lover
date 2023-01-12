import 'package:book_lover/presentation/components/book_item_loading.dart';
import 'package:book_lover/presentation/pages/home/bloc/more_books_for_you/more_books_for_you_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../pages/home/bloc/more_books_for_you/more_books_for_you_state.dart';
import 'book_item.dart';
import 'error.dart';
import 'primary_button.dart';

class MoreBooksForYouComponent extends StatelessWidget {
  const MoreBooksForYouComponent({
    Key? key,
  }) : super(key: key);

  final String errorReason = "Error reason";

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
          BlocBuilder<MoreBooksForYouCubit, MoreBooksForYouState>(
            builder: (context, state) {
              return state.map(
                initial: (value) {
                  context.read<MoreBooksForYouCubit>().loadMoreBooksForYou();
                  return BookItemLoading(itemCount: 7, padding: EdgeInsets.only(left: 24.w));
                },
                loading: (value) => BookItemLoading(itemCount: 7, padding: EdgeInsets.only(left: 24.w)),
                loaded: (value) => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(left: 24.w),
                  itemCount: value.moreBooks.length,
                  itemBuilder: (context, index) {
                    return BookItem(
                      bookModel: value.moreBooks[index],
                      bottomBorder: index != value.moreBooks.length - 1,
                    );
                  },
                ),
                error: (value) => ErrorComponent(errorReason: value.error),
              );
            },
          ),
          Center(
            child: PrimaryButton(onPressed: () {}, width: 327.w, text: "Load more"),
          ),
        ],
      ),
    );
  }
}
