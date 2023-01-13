import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              AccountItem(onTap: () {}, itemName: "Customize interests"),
              AccountItem(onTap: () {}, itemName: "History reading list"),
              AccountItem(onTap: () {}, itemName: "History purchase"),
              AccountItem(onTap: () {}, itemName: "Support"),
              AccountItem(onTap: () {}, itemName: "Refer a friend"),
              AccountItem(onTap: () {}, itemName: "Logout"),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountItem extends StatelessWidget {
  const AccountItem({
    super.key,
    required this.onTap,
    required this.itemName,
  });
  final Function() onTap;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 66.h,
          width: double.maxFinite,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: AppColors.border, width: 1.h)),
          ),
          child: Text(itemName, style: AppTextStyles.h5),
        ),
      ),
    );
  }
}
