import 'package:book_lover/config/constants/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

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
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(borderRadius?[0] ?? 2.r),
        topRight: Radius.circular(borderRadius?[1] ?? 6.r),
        bottomRight: Radius.circular(borderRadius?[2] ?? 6.r),
        bottomLeft: Radius.circular(borderRadius?[3] ?? 2.r),
      ),
      child: Container(
        width: width ?? 64.w,
        height: height ?? 98.h,
        margin: margin ?? EdgeInsets.only(right: 24.w),
        child: CachedNetworkImage(
          width: width ?? 64.w,
          height: height ?? 98.h,
          imageUrl: imagePath,
          fit: BoxFit.cover,
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              width: width ?? 64.w,
              height: height ?? 98.h,
              color: AppColors.bgColor,
            ),
          ),
          errorWidget: (context, url, error) => Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadius?[0] ?? 2.r),
                topRight: Radius.circular(borderRadius?[1] ?? 6.r),
                bottomRight: Radius.circular(borderRadius?[2] ?? 6.r),
                bottomLeft: Radius.circular(borderRadius?[3] ?? 2.r),
              ),
            ),
            child: const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
