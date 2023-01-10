import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/config/constants/local_data.dart';
import 'package:book_lover/data/models/book_model.dart';
import 'package:book_lover/presentation/components/book_picture.dart';
import 'package:book_lover/presentation/components/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController textEditingController = TextEditingController();
  bool recentSearch = true;
  List<BookModel> searchBooks = [];
  List<BookModel> recentlySearched = [];

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      searchBooks.clear();
      for (var i = 0; i < books.length; i++) {
        if (books[i].name.toLowerCase().contains(textEditingController.text.toLowerCase())) {
          searchBooks.add(books[i]);
        }
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: EdgeInsets.only(top: 56.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 283.w,
                  child: CustomTextField(controller: textEditingController),
                ),
                InkWell(
                  onTap: () {
                    if (textEditingController.text.isEmpty) {
                      Navigator.pop(context);
                    } else {
                      textEditingController.clear();
                    }
                  },
                  child: SvgPicture.asset(Assets.icons.close),
                ),
              ],
            ),
            if (recentlySearched.isEmpty && textEditingController.text.isEmpty)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Text(
                  "You haven't search anything",
                  style: AppTextStyles.h5,
                ),
              )
            else if (recentlySearched.isNotEmpty && textEditingController.text.isEmpty)
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recently searches", style: AppTextStyles.h2),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              recentlySearched.clear();
                            });
                          },
                          child: Text(
                            "Clear search",
                            style: AppTextStyles.h6.copyWith(color: AppColors.text2),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: recentlySearched.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => Container(
                          height: 80.h,
                          width: double.maxFinite,
                          alignment: Alignment.centerLeft,
                          decoration: const BoxDecoration(border: Border(top: BorderSide(color: AppColors.border))),
                          child: Text(recentlySearched[index].name, style: AppTextStyles.h5),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Top results", style: AppTextStyles.h2),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              recentlySearched.clear();
                            });
                          },
                          child: Text(
                            "All",
                            style: AppTextStyles.h6.copyWith(color: AppColors.text2),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              recentlySearched.clear();
                            });
                          },
                          child: Text(
                            "Book",
                            style: AppTextStyles.h6.copyWith(color: AppColors.text2),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              recentlySearched.clear();
                            });
                          },
                          child: Text(
                            "Author",
                            style: AppTextStyles.h6.copyWith(color: AppColors.text2),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: searchBooks.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => SearchBookItem(
                            bookModel: searchBooks[index],
                            onTap: () {
                              if (!recentlySearched.contains(searchBooks[index])) {
                                recentlySearched.add(searchBooks[index]);
                              }
                            }),
                      ),
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

// ignore: must_be_immutable
class SearchBookItem extends StatelessWidget {
  SearchBookItem({Key? key, required this.bookModel, required this.onTap}) : super(key: key);

  final BookModel bookModel;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 97.h,
        width: double.maxFinite,
        decoration: const BoxDecoration(border: Border(top: BorderSide(color: AppColors.border))),
        child: Row(
          children: [
            BookPicture(imagePath: bookModel.image, width: 32.w, height: 48.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bookModel.name, style: AppTextStyles.h3),
                Text(bookModel.author, style: AppTextStyles.h6.copyWith(color: AppColors.text2)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
