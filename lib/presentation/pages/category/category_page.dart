import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/local_data.dart';
import 'package:book_lover/presentation/components/book_item.dart';
import 'package:book_lover/presentation/components/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/back_appbar.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> with SingleTickerProviderStateMixin {
  bool popular = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const BackAppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.w),
        children: [
          const PageTitle(
            title: "Adventure",
            subtitle: "Adventure is a story about adventure, usually accompanied by danger, often by physical action.",
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    popular = !popular;
                  });
                },
                child: Text(
                  "Popular",
                  style: AppTextStyles.h6.copyWith(color: popular ? AppColors.text1 : AppColors.text3),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    popular = !popular;
                  });
                },
                child: Text(
                  "Latest",
                  style: AppTextStyles.h6.copyWith(color: popular ? AppColors.text3 : AppColors.text1),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          ...List.generate(
            10,
            (index) => BookItem(bookModel: books[index], bottomBorder: index != 9),
          ),
        ],
      ),
    );
  }
}
