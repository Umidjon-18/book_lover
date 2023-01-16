import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

// ignore: must_be_immutable
class AccountItem extends StatelessWidget {
  AccountItem({
    super.key,
    required this.onTap,
    required this.itemName,
    this.visibleRightArrow = false,
  });
  final Function() onTap;
  final String itemName;
  bool visibleRightArrow;

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(itemName, style: AppTextStyles.h5),
              if (visibleRightArrow) SvgPicture.asset(Assets.icons.arrowRight),
            ],
          ),
        ),
      ),
    );
  }
}
