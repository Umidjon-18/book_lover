import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/constants.dart';
import 'package:book_lover/presentation/components/account_item.dart';
import 'package:book_lover/presentation/components/back_appbar.dart';
import 'package:book_lover/presentation/components/custom_textfield.dart';
import 'package:book_lover/presentation/components/page_title.dart';
import 'package:book_lover/presentation/components/primary_button.dart';
import 'package:book_lover/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  late TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const BackAppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
        children: [
          const PageTitle(
            title: "How can we help you?",
            subtitle: "You've got a trouble. Don't worry, we here to help.",
          ),
          Text("F.A.Qs", style: AppTextStyles.h1),
          AccountItem(
            onTap: () => Navigator.pushNamed(context, Routes.faqPage, arguments: {
              "question": faq.entries.first.key,
              "answer": faq.entries.first.value,
            }),
            itemName: "How can I get refund?",
            visibleRightArrow: true,
          ),
          AccountItem(
            onTap: () => Navigator.pushNamed(context, Routes.faqPage, arguments: {
              "question": faq.entries.first.key,
              "answer": faq.entries.first.value,
            }),
            itemName: "Membership and single purchase?",
            visibleRightArrow: true,
          ),
          AccountItem(
            onTap: () => Navigator.pushNamed(context, Routes.faqPage, arguments: {
              "question": faq.entries.first.key,
              "answer": faq.entries.first.value,
            }),
            itemName: "How can I read my book?",
            visibleRightArrow: true,
          ),
          AccountItem(
            onTap: () => Navigator.pushNamed(context, Routes.faqPage, arguments: {
              "question": faq.entries.first.key,
              "answer": faq.entries.first.value,
            }),
            itemName: "How to customize my feed?",
            visibleRightArrow: true,
          ),
          AccountItem(
            onTap: () => Navigator.pushNamed(context, Routes.faqPage, arguments: {
              "question": faq.entries.first.key,
              "answer": faq.entries.first.value,
            }),
            itemName: "Can I contribute my books?",
            visibleRightArrow: true,
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 24.h),
            child: Text("Message support", style: AppTextStyles.h1),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(bottom: 24.h),
            child: CustomTextField(
              controller: controller,
              hintText: "Your problem",
            ),
          ),
          PrimaryButton(
            onPressed: () {},
            width: double.maxFinite,
            text: "Send request",
          ),
        ],
      ),
    );
  }
}
