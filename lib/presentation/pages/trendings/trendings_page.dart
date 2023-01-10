import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/local_data.dart';
import 'package:book_lover/presentation/components/book_item.dart';
import 'package:flutter/material.dart';
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
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 56.h, left: 24.w),
        children: [
          const PageTitle(
            title: "Trendings",
            subtitle: "Save your favourite books now andiscover them  later. Only you can see your collection",
          ),
          ...List.generate(
            10,
            (index) => BookItem(bookModel: books[index]),
          ),
        ],
      ),
    );
  }
}

