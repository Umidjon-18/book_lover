import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookPicture extends StatelessWidget {
  const BookPicture({
    Key? key,
    this.width,
    this.height,
    this.margin,
    this.borderRadius,
    required this.imagePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final List<double>? borderRadius;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 64.w,
      height: height ?? 98.h,
      margin: margin ?? EdgeInsets.only(right: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius?[0]??2.r),
          topRight: Radius.circular(borderRadius?[1]??6.r),
          bottomRight: Radius.circular(borderRadius?[2]??6.r),
          bottomLeft: Radius.circular(borderRadius?[3]??2.r),
        ),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
