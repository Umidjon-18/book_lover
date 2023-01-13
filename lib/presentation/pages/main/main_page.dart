import 'package:book_lover/presentation/pages/collections/collections_page.dart';
import 'package:book_lover/presentation/pages/home/home_page.dart';
import 'package:book_lover/presentation/pages/notifications/notifications_page.dart';
import 'package:book_lover/presentation/pages/trendings/trendings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/assets.dart';
import '../account/account_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController pageController = PageController();
  final ValueNotifier<int> currentBottomIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: PageView(
        controller: pageController,
        children: const [
          HomePage(),
          TrendingsPage(),
          CollectionsPage(),
          NotificationsPage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: currentBottomIndex,
          builder: (BuildContext context, int value, Widget? child) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                pageController.jumpToPage(
                  value,
                  // duration: const Duration(milliseconds: 400),
                  // curve: Curves.easeIn,
                );
                currentBottomIndex.value = value;
              },
              currentIndex: currentBottomIndex.value,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 14.sp,
              unselectedFontSize: 14.sp,
              selectedItemColor: AppColors.text1,
              unselectedItemColor: AppColors.text3,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.icons.home,
                      color: currentBottomIndex.value == 0 ? AppColors.mainColor : null),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.icons.trending,
                      color: currentBottomIndex.value == 1 ? AppColors.mainColor : null),
                  label: "Trending",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: SvgPicture.asset(Assets.icons.save,
                        color: currentBottomIndex.value == 2 ? AppColors.mainColor : null),
                  ),
                  label: "Save",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 0.h),
                    child: Icon(
                      Icons.notifications,
                      size: 21.h,
                      color: currentBottomIndex.value == 3 ? AppColors.mainColor : null,
                    ),
                  ),
                  label: "Inbox",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.person_alt_circle,
                    size: 21.h,
                    color: currentBottomIndex.value == 4 ? AppColors.mainColor : null,
                  ),
                  label: "Account",
                ),
              ],
            );
          }),
    );
  }
}
