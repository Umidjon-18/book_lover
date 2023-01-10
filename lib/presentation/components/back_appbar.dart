import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/constants/assets.dart';

class BackAppBar extends StatelessWidget with PreferredSizeWidget {
  const BackAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 50.h),
      child: IconButton(
        splashRadius: 25.r,
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(Assets.icons.arrowLeft),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, 76.h);
}
