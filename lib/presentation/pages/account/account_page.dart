import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/account_item.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, top: 56.h, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Account", style: AppTextStyles.title),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Hero(
                    tag: "Profile Picture",
                    child: CircleAvatar(
                      radius: 24.h,
                      foregroundImage: AssetImage(Assets.images.author1),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Jennie Jolia", style: AppTextStyles.h2),
                      Text("Setting my account", style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              AccountItem(
                itemName: "My profile",
                onTap: () => Navigator.pushNamed(context, Routes.profilePage),
              ),
              AccountItem(
                itemName: "Customize interests",
                onTap: () => Navigator.pushNamed(context, Routes.customizeInterestsPage),
              ),
              AccountItem(onTap: () {}, itemName: "History reading list"),
              AccountItem(
                itemName: "Support",
                onTap: () => Navigator.pushNamed(context, Routes.supportPage),
              ),
              AccountItem(onTap: () {}, itemName: "Logout"),
            ],
          ),
        ),
      ),
    );
  }
}
