import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../config/constants/app_text_styles.dart';
import '../../config/constants/assets.dart';

class ErrorComponent extends StatelessWidget {
  const ErrorComponent({
    Key? key,
    required this.errorReason,
    this.imageWidth,
    this.imageHeight,
  }) : super(key: key);

  final String? errorReason;
  final double? imageWidth;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Lottie.asset(Assets.images.notFoundLottie, width: imageWidth, height: imageHeight),
        Text(errorReason??"Not found", style: AppTextStyles.h3),
      ],
    ));
  }
}
