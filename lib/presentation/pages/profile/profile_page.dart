import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/presentation/components/back_appbar.dart';
import 'package:book_lover/presentation/components/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 3, vsync: this);
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
      backgroundColor: AppColors.bgColor,
      appBar: const BackAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Hero(
              tag: "Profile Picture",
              child: CircleAvatar(
                radius: 40.r,
                foregroundImage: AssetImage(Assets.images.author1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 4.h),
              child: Text("David James", style: AppTextStyles.h2),
            ),
            Text(
              "Silver member",
              style: AppTextStyles.h5.copyWith(color: AppColors.text2),
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
                      Tab(text: 'General'),
                      Tab(text: 'Membership'),
                      Tab(text: 'Security'),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -0.5),
                    child: Divider(color: AppColors.border, height: 0.h, thickness: 1.h),
                  ),
                ],
              ),
            ),
            if (tabController.index == 0)
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("General Information", style: AppTextStyles.h1),
                    SizedBox(height: 24.h),
                    Text("My name", style: AppTextStyles.h6.copyWith(color: AppColors.text2)),
                    Text("David James", style: AppTextStyles.h4),
                    SizedBox(height: 24.h),
                    Text("Email", style: AppTextStyles.h6.copyWith(color: AppColors.text2)),
                    Text("davidjames@gmail.com", style: AppTextStyles.h4),
                    SizedBox(height: 24.h),
                    SecondaryButton(onPressed: () {}, width: 327.w, text: "Edit"),
                  ],
                ),
              )
            else if (tabController.index == 1)
              Center(
                child: Text(
                  "Membership",
                  style: AppTextStyles.h4,
                ),
              )
            else
              Center(
                child: Text(
                  "Security",
                  style: AppTextStyles.h4,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
