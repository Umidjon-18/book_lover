import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/local_data.dart';
import 'package:book_lover/presentation/components/book_item.dart';
import 'package:book_lover/presentation/components/book_item_loading.dart';
import 'package:book_lover/presentation/components/error.dart';
import 'package:book_lover/presentation/pages/home/bloc/trending_books/trending_books_cubit.dart';
import 'package:book_lover/presentation/pages/trendings/bloc/trendings_page_cubit.dart';
import 'package:book_lover/presentation/pages/trendings/bloc/trendings_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/page_title.dart';

class TrendingsPage extends StatefulWidget {
  const TrendingsPage({super.key});

  @override
  State<TrendingsPage> createState() => _TrendingsPageState();
}

class _TrendingsPageState extends State<TrendingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 56.h, left: 24.w),
          child: Column(
            children: [
              const PageTitle(
                title: "Trendings",
                subtitle: "Save your favourite books now andiscover them  later. Only you can see your collection",
              ),
              BlocBuilder<TrendingPageCubit, TrendingsPageState>(
                builder: (context, state) => state.map(
                  initial: (value) {
                    context.read<TrendingPageCubit>().loadTrendingBooks();
                    return const BookItemLoading(itemCount: 7);
                  },
                  loading: (value) => const BookItemLoading(itemCount: 7),
                  loaded: (value) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: value.trendingBooks.length,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return BookItem(
                          bookModel: value.trendingBooks[index],
                          bottomBorder: index != value.trendingBooks.length - 1,
                        );
                      },
                    );
                  },
                  error: (value) => ErrorComponent(errorReason: value.error),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
