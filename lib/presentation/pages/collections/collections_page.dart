import 'package:book_lover/config/constants/app_colors.dart';
import 'package:book_lover/config/constants/app_text_styles.dart';
import 'package:book_lover/config/constants/assets.dart';
import 'package:book_lover/config/constants/local_data.dart';
import 'package:book_lover/data/models/collection_model.dart';
import 'package:book_lover/presentation/components/book_picture.dart';
import 'package:book_lover/presentation/components/custom_textfield.dart';
import 'package:book_lover/presentation/components/my_text_button.dart';
import 'package:book_lover/presentation/components/page_title.dart';
import 'package:book_lover/presentation/components/primary_button.dart';
import 'package:book_lover/presentation/pages/collections/bloc/collections_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/delete_snackbar.dart';
import 'bloc/collections_page_state.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({super.key});

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  String collectionName = "My favourite";
  bool bottomBorder = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 56.h, left: 24.w),
          child: Column(
            children: [
              PageTitle(
                title: "My collections",
                subtitle: "Save your favourite books now and discover them  later. Only you can see your collection",
                padding: EdgeInsets.only(right: 24.w, bottom: 40.h),
              ),
              BlocBuilder<CollectionsPageCubit, CollectionsPageState>(
                builder: (context, state) {
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CollectionsItem extends StatelessWidget {
  CollectionsItem({
    Key? key,
    required this.collectionModel,
    required this.bottomBorder,
  }) : super(key: key);

  final bool bottomBorder;
  CollectionModel collectionModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(collectionModel.collectionName, style: AppTextStyles.h1),
            const Spacer(),
            IconButton(
              onPressed: () => showModalBottomSheet(
                isDismissible: false,
                barrierColor: Colors.black.withOpacity(.8),
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => CollectionsBottomSheet(collectionName: collectionModel.collectionName),
              ),
              splashRadius: 18.r,
              icon: SvgPicture.asset(Assets.icons.more, color: AppColors.text3),
            ),
            SizedBox(width: 5.w),
          ],
        ),
        Text("${collectionModel.books.length} books", style: AppTextStyles.h6.copyWith(color: AppColors.text2)),
        // Container(
        //   height: 100.h,
        //   margin: EdgeInsets.only(top: 16.h, right: 24.w, bottom: 24.h),
        //   child: ListView.builder(
        //     itemCount: collectionModel.books.length,
        //     physics: const BouncingScrollPhysics(),
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) => BookPicture(imagePath: collectionModel.books[index].image),
        //   ),
        // ),
        if (bottomBorder)
          Container(
            height: 1.h,
            width: double.maxFinite,
            color: AppColors.border,
            margin: EdgeInsets.only(right: 24.w, bottom: 24.h),
          ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CollectionsBottomSheet extends StatelessWidget {
  CollectionsBottomSheet({
    Key? key,
    required this.collectionName,
  }) : super(key: key);

  final String collectionName;

  late TextEditingController textEditingController = TextEditingController()..text = collectionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(7.r),
          topRight: Radius.circular(7.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              showModalBottomSheet(
                isDismissible: false,
                barrierColor: Colors.black.withOpacity(.8),
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => const ShareCollectionBottomSheet(),
              );
            },
            padding: EdgeInsets.only(left: 24.w),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.share),
                SizedBox(width: 20.w),
                Text("Share collection", style: AppTextStyles.h5),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                barrierColor: Colors.black.withOpacity(.8),
                barrierDismissible: false,
                builder: (context) {
                  return Center(
                    child: Container(
                      width: 327.w,
                      height: 292.h,
                      padding: EdgeInsets.all(24.h),
                      decoration: BoxDecoration(
                        color: AppColors.bgColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Title", style: AppTextStyles.h1),
                          CustomTextField(controller: textEditingController),
                          PrimaryButton(onPressed: () {}, width: double.maxFinite, text: "Change"),
                          MyTextButton(
                              onPressed: () => Navigator.pop(context), width: double.maxFinite, text: "Cancel"),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            padding: EdgeInsets.only(left: 24.w),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.pencil),
                SizedBox(width: 20.w),
                Text("Edit collection", style: AppTextStyles.h5),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () => deleteSnackBar(context, collectionName),
            padding: EdgeInsets.only(left: 24.w),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.delete),
                SizedBox(width: 20.w),
                Text("Delete", style: AppTextStyles.h5.copyWith(color: Colors.red)),
              ],
            ),
          ),
          Divider(color: AppColors.border, indent: 24.w, endIndent: 24.w, thickness: 1),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            padding: EdgeInsets.only(left: 24.w),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.close),
                SizedBox(width: 20.w),
                Text("Cancel", style: AppTextStyles.h5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShareCollectionBottomSheet extends StatelessWidget {
  const ShareCollectionBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275.h,
      width: double.maxFinite,
      padding: EdgeInsets.only(top: 35.h, bottom: 24.h),
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(7.r),
          topRight: Radius.circular(7.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Text("Share collection", style: AppTextStyles.h1),
          ),
          SizedBox(
            height: 90.h,
            child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60.h,
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                        image: AssetImage(
                          shareItems.values.elementAt(index),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(shareItems.keys.elementAt(index), style: AppTextStyles.h6),
                ],
              ),
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 24.w),
            ),
          ),
          Divider(color: AppColors.border, indent: 24.w, endIndent: 24.w, thickness: 1),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            padding: EdgeInsets.only(left: 24.w),
            child: Row(
              children: [
                SvgPicture.asset(Assets.icons.close),
                SizedBox(width: 20.w),
                Text("Cancel", style: AppTextStyles.h5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
