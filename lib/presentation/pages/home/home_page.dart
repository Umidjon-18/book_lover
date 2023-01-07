import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/assets.dart';
import '../../components/authors_for_you.dart';
import '../../components/keep_reading.dart';
import '../../components/more_books_for_you.dart';
import '../../components/my_appbar.dart';
import '../../components/trending_books.dart';
import '../../components/you_may_love.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Image.asset(Assets.images.banner),
            const KeepReadingComponent(),
            const TrendingBooksComponent(),
            const YouMayLoveComponent(),
            const AuthorsForYouComponent(),
            const MoreBooksForYouComponent()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        selectedItemColor: AppColors.text1,
        unselectedItemColor: AppColors.text3,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.trending),
            label: "Trending",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.save),
            label: "Save",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.inbox),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.icons.settings),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
