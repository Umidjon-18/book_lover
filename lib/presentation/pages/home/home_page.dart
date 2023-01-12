import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/assets.dart';
import 'components/keep_reading.dart';
import '../../components/more_books_for_you.dart';
import '../../components/my_appbar.dart';
import 'components/trending_books.dart';
import 'components/you_may_love.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var items = [
            SizedBox(height: 40.h),
            CachedNetworkImage(imageUrl: "", 
            errorWidget: (context, url, error) => Image.asset(Assets.images.banner),
            placeholder: (context, url) => Image.asset(Assets.images.banner),
            ),
            const KeepReadingComponent(),
            const TrendingBooksComponent(),
            const YouMayLoveComponent(),
            // const AuthorsForYouComponent(),
            const MoreBooksForYouComponent(),
          ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const MyAppBar(),
      body: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder:(context, index) => items[index]),
      // body: SingleChildScrollView(
      //   physics: const BouncingScrollPhysics(),
      //   child: Column(
      //     children: ,
      //   ),
      // ),
      
    );
  }
}
