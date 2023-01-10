import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/presentation/components/circular_button.dart';
import 'package:book_lover/presentation/components/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorySearchPage extends StatefulWidget {
  const CategorySearchPage({super.key});

  @override
  State<CategorySearchPage> createState() => _CategorySearchPageState();
}

class _CategorySearchPageState extends State<CategorySearchPage> {
  late TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 56.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircularButton(onPressed: () => Navigator.pop(context), svgIcon: Assets.icons.close),
            ),
            SizedBox(height: 40.h),
            Text("Categories", style: AppTextStyles.h1),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 24.h, bottom: 40.h),
              child: CustomTextField(controller: textEditingController, hintText: 'Search category'),
            ),
          ],
        ),
      ),
    );
  }
}
