import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/config/constants/local_data.dart';
import 'package:book_lover/presentation/components/back_appbar.dart';
import 'package:book_lover/presentation/components/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthorPage extends StatefulWidget {
  const AuthorPage({super.key});

  @override
  State<AuthorPage> createState() => _AuthorPageState();
}

class _AuthorPageState extends State<AuthorPage> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);
  @override
  void initState() {
    super.initState();
    tabController.addListener(() {
      if (tabController.indexIsChanging) setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: const BackAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            CircleAvatar(
              radius: 40.r,
              foregroundImage: AssetImage(Assets.images.author1),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 4.h),
              child: Text("David James", style: AppTextStyles.h2),
            ),
            Text(
              "Horror & detective author",
              style: AppTextStyles.h5.copyWith(color: AppColors.text2),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 40.h),
              child: Column(
                children: [
                  TabBar(
                    controller: tabController,
                    labelStyle: AppTextStyles.h2,
                    labelColor: AppColors.text1,
                    indicatorWeight: 2.h,
                    indicatorColor: AppColors.mainColor,
                    unselectedLabelColor: AppColors.text3,
                    tabs: const [
                      Tab(text: 'Books'),
                      Tab(text: 'About'),
                    ],
                  ),
                  Transform.translate(
                    offset: const Offset(0, -0.5),
                    child: Divider(color: AppColors.border, height: 0.h, thickness: 1.h),
                  ),
                ],
              ),
            ),
            if (tabController.index == 0)
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Column(
                  children: List.generate(10, (index) => BookItem(bookModel: books[index],bottomBorder: index != 9)),
                ),
              )
            else
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date of birth:  January 1st 1980", style: AppTextStyles.h5),
                    SizedBox(height: 16.h),
                    Text("Nationality:  Czech Republic", style: AppTextStyles.h5),
                    SizedBox(height: 32.h),
                    Text(
                      '''Chu Hao Huy graduated with a master's degree in Science and Technology from Tsinghua University, is a writer specializing in the writing of detective novels, loved by the people for building the character police in the series. He has now published more than 10 novels, and many works have been made into films. Typical works: Notice of death, Evil hypnotherapist, Portraits of criminals ...
''',
                      style: AppTextStyles.h5,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
