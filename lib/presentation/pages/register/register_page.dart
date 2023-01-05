import 'package:book_lover/config/constants/assets.dart';
import 'package:flutter/material.dart';

import '../../components/circular_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularButton(
          onPressed: () {},
          svgIcon: Assets.icons.search,
        ),
      ),
    );
  }
}
