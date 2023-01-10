import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_text_styles.dart';

void deleteSnackBar(BuildContext context, String collection) {
  Navigator.pop(context);
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.text1,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Deleted "$collection"',
            style: AppTextStyles.h5.copyWith(color: AppColors.border),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Undo",
              style: AppTextStyles.h3.copyWith(color: AppColors.mainColor),
            ),
          ),
        ],
      ),
    ),
  );
}
