import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/constants/local_data.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool titleBold = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 56.h, bottom: 40.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Notification", style: AppTextStyles.title),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: SvgPicture.asset(Assets.icons.finderList),
                    ),
                  ],
                ),
              ),
              ...List.generate(
                notifications.length,
                (index) => NotificationItem(
                  titleBold: index == 0 || index == notifications.length - 1,
                  index: index,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    Key? key,
    required this.titleBold,
    required this.index,
  }) : super(key: key);

  final bool titleBold;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.border),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            notifications.keys.elementAt(index),
            style: titleBold ? AppTextStyles.h3 : AppTextStyles.h5,
          ),
          SizedBox(height: 8.h),
          Text(
            notifications.values.elementAt(index),
            style: AppTextStyles.h5.copyWith(color: AppColors.text2),
          ),
        ],
      ),
    );
  }
}
