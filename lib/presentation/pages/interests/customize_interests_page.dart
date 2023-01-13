import 'package:book_lover/presentation/components/back_appbar.dart';
import 'package:book_lover/presentation/components/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_text_styles.dart';

class CustomizeInterestsPage extends StatefulWidget {
  const CustomizeInterestsPage({super.key});

  @override
  State<CustomizeInterestsPage> createState() => _CustomizeInterestsPageState();
}

class _CustomizeInterestsPageState extends State<CustomizeInterestsPage> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);
  @override
  void initState() {
    super.initState();
    tabController.addListener(() {
      if (tabController.indexIsChanging) setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            PageTitle(
              title: "Customize interests",
              subtitle: "Select your favourite topics, follow authors and they will be displayed at your homepage",
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 60.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 40.h),
              child: Column(
                children: [
                  TabBar(
                    controller: tabController,
                    labelStyle: AppTextStyles.h3,
                    labelColor: AppColors.text1,
                    indicatorWeight: 2.h,
                    indicatorColor: AppColors.mainColor,
                    unselectedLabelColor: AppColors.text3,
                    tabs: const [
                      Tab(text: 'Topic'),
                      Tab(text: 'Authors'),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -0.5),
                    child: Divider(color: AppColors.border, height: 0.h, thickness: 1.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
