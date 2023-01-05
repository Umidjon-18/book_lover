import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CircularButton extends StatelessWidget {
  CircularButton({
    super.key,
    required this.onPressed,
    required this.svgIcon,
  });

  Function() onPressed;
  String svgIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40.h,
      elevation: 10,
      minWidth: 40.h,
      onPressed: onPressed,
      color: Colors.white,
      padding: EdgeInsets.zero,
      splashColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: SvgPicture.asset(svgIcon),
    );
  }
}
