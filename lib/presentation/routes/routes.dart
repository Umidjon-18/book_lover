import 'package:book_lover/presentation/pages/author/author_page.dart';
import 'package:book_lover/presentation/pages/category/category_page.dart';
import 'package:book_lover/presentation/pages/category/category_search_page.dart';
import 'package:book_lover/presentation/pages/home/home_page.dart';
import 'package:book_lover/presentation/pages/interests/customize_interests_page.dart';
import 'package:book_lover/presentation/pages/main/main_page.dart';
import 'package:book_lover/presentation/pages/notifications/notifications_page.dart';
import 'package:book_lover/presentation/pages/profile/profile_page.dart';
import 'package:book_lover/presentation/pages/register/register_page.dart';
import 'package:book_lover/presentation/pages/search/search_page.dart';
import 'package:book_lover/presentation/pages/support/faq_page.dart';
import 'package:book_lover/presentation/pages/support/support_page.dart';
import 'package:book_lover/presentation/pages/trendings/trendings_page.dart';
import 'package:flutter/material.dart';

import '../pages/collections/collections_page.dart';

class Routes {
  static const registerPage = '/registerPage';
  static const mainPage = '/';
  static const homePage = '/homePage';
  static const trendingsPage = '/trendingsPage';
  static const categoryPage = '/categoryPage';
  static const authorPage = '/authorPage';
  static const collectionsPage = '/collectionsPage';
  static const notificationsPage = '/notificationsPage';
  static const searchPage = '/searchPage';
  static const categorySearchPage = '/categorySearchPage';
  static const profilePage = '/profilePage';
  static const customizeInterestsPage = '/customizeInterestsPage';
  static const supportPage = '/supportPage';
  static const faqPage = '/faqPage';

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
        case mainPage:
          return MaterialPageRoute(
            builder: (context) {
              return const MainPage();
            },
          );
        case homePage:
          return MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          );
        case searchPage:
          return MaterialPageRoute(
            builder: (context) {
              return const SearchPage();
            },
          );
        case trendingsPage:
          return MaterialPageRoute(
            builder: (context) {
              return const TrendingsPage();
            },
          );
        case categoryPage:
          return MaterialPageRoute(
            builder: (context) {
              return const CategoryPage();
            },
          );
        case authorPage:
          return MaterialPageRoute(
            builder: (context) {
              return const AuthorPage();
            },
          );
        case collectionsPage:
          return MaterialPageRoute(
            builder: (context) {
              return const CollectionsPage();
            },
          );
        case notificationsPage:
          return MaterialPageRoute(
            builder: (context) {
              return const NotificationsPage();
            },
          );
        case categorySearchPage:
          return MaterialPageRoute(
            builder: (context) {
              return const CategorySearchPage();
            },
          );
        case profilePage:
          return MaterialPageRoute(
            builder: (context) {
              return const ProfilePage();
            },
          );
        case customizeInterestsPage:
          return MaterialPageRoute(
            builder: (context) {
              return const CustomizeInterestsPage();
            },
          );
        case supportPage:
          return MaterialPageRoute(
            builder: (context) {
              return const SupportPage();
            },
          );
        case faqPage:
          return MaterialPageRoute(
            builder: (context) {
              return const FAQPage();
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
