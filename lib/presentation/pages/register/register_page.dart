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
      resizeToAvoidBottomInset: false,
      body: Center(
        child: CustomSwitcher(onChanged: onChanged, switcherValue: switcherValue),
      ),
    );
  }
}

