import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';

// ignore: must_be_immutable
class CustomSwitcher extends StatelessWidget {
  CustomSwitcher({
    super.key,
    required this.onChanged,
    required this.switcherValue,
  });
  bool switcherValue;

  void Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: switcherValue ? AppColors.mainColor : AppColors.border,
        ),
      ),
      child: CupertinoSwitch(
        value: switcherValue,
        trackColor: Colors.white,
        activeColor: Colors.white,
        thumbColor: switcherValue ? AppColors.mainColor : AppColors.border,
        onChanged: onChanged,
      ),
    );
  }
}
