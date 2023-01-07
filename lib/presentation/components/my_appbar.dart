import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/constants/assets.dart';
import 'circular_button.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 56.h, left: 24.w, right: 24.w, bottom: 6.h),
      child: Row(
        children: [
          SvgPicture.asset(Assets.icons.logo),
          const Spacer(),
          CircularButton(onPressed: () {}, svgIcon: Assets.icons.search),
          CircularButton(onPressed: () {}, svgIcon: Assets.icons.menu),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(146.h);
}
