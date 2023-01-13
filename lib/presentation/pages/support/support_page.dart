import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/presentation/components/back_appbar.dart';
import 'package:book_lover/presentation/components/page_title.dart';
import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const BackAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            PageTitle(
              title: "How can we help you?",
              subtitle: "You’ve got a trouble. Don’t worry, we here to help.",
            ),
          ],
        ),
      ),
    );
  }
}
