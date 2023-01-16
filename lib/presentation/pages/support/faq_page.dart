import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/presentation/components/back_appbar.dart';
import 'package:book_lover/presentation/components/my_text_button.dart';
import 'package:book_lover/presentation/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({
    super.key,
    required this.question,
    required this.answer,
  });
  final String question;
  final String answer;

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackAppBar(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
          Text(widget.question, style: AppTextStyles.h1),
          SizedBox(height: 24.h),
          Text(widget.answer, style: AppTextStyles.h5.copyWith(color: AppColors.text2)),
          SizedBox(height: 40.h),
          Divider(thickness: 2.h),
          Row(
            children: [
              Text("Is it helpful for you?", style: AppTextStyles.h3),
              const Spacer(),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Thank you for your feedback 😊"), backgroundColor: AppColors.text1),
                  );
                },
                child: Text(
                  "Yes",
                  style: AppTextStyles.h3.copyWith(
                    color: AppColors.text2,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                      barrierColor: const Color(0xFF333333),
                      context: context,
                      builder: (context) {
                        return Center(
                          child: Material(
                            color: Colors.transparent,
                            child: Container(
                              width: 327.w,
                              height: 392.h,
                              padding: EdgeInsets.all(24.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColors.bgColor,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Message support", style: AppTextStyles.h1),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: TextField(
                                      maxLines: 7,
                                      scrollPadding: EdgeInsets.zero,
                                      decoration: InputDecoration(
                                        hintText: "Your problem",
                                        hintStyle: AppTextStyles.h6.copyWith(color: AppColors.text2),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: AppColors.text1, width: 1.h),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: AppColors.text1, width: 1.h),
                                        ),
                                      ),
                                    ),
                                  ),
                                  PrimaryButton(
                                    onPressed: () {},
                                    width: double.maxFinite,
                                    text: "Send request",
                                  ),
                                  MyTextButton(
                                    onPressed: () => Navigator.pop(context),
                                    width: double.maxFinite,
                                    text: "Cancel",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                  "No",
                  style: AppTextStyles.h3.copyWith(
                    color: AppColors.text2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
