import 'package:book_lover/config/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../components/custom_switcher.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool switcherValue = false;
  void onChanged(bool? val) {
    setState(() {
      switcherValue = val ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: CustomSwitcher(onChanged: onChanged, switcherValue: switcherValue),
      ),
    );
  }
}

