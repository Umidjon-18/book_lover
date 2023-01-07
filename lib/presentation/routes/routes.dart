import 'package:book_lover/presentation/pages/home/home_page.dart';
import 'package:book_lover/presentation/pages/register/register_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const registerPage = '/registerPage';
  static const homePage = '/';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args = routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case registerPage:
          return MaterialPageRoute(
            builder: (context) {
              return const RegisterPage();
            },
          );
        case homePage:
          return MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const RegisterPage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const RegisterPage(),
      );
    }
  }
}
