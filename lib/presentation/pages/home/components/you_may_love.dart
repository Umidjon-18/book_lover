import 'package:book_lover/presentation/components/error.dart';
import 'package:book_lover/presentation/pages/home/bloc/you_may_love/you_may_love_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_text_styles.dart';
import '../../../components/book_picture.dart';
import '../bloc/you_may_love/you_may_love_state.dart';

class YouMayLoveComponent extends StatelessWidget {
  const YouMayLoveComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: AppColors.text1,
      padding: EdgeInsets.symmetric(vertical: 60.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("You may love", style: AppTextStyles.h1.copyWith(color: AppColors.bgColor)),
                Text(
                  "Latest books come from your favourite topics",
                  style: AppTextStyles.h5.copyWith(color: AppColors.text3),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 235.h,
              child: BlocBuilder<YouMayLoveCubit, YouMayLoveState>(
                builder: (context, state) {
                  return state.map(
                    initial: (value) {
                      context.read<YouMayLoveCubit>().loadYouMayLoveBooks();
                      return const YouMayLoveLoading();
                    },
                    loading: (value) => const YouMayLoveLoading(),
                    loaded: (value) => ListView.builder(
                      itemCount: value.youMayLoveBooks.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 24.w),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BookPicture(
                              width: 108.w,
                              height: 166.h,
                              borderRadius: [4.r, 8.r, 8.r, 4.r],
                              imagePath: value.youMayLoveBooks[index].images[0].href,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
                              child: Text(
                                value.youMayLoveBooks[index].metadata.subject.first.name,
                                style: AppTextStyles.h5.copyWith(color: AppColors.text2),
                              ),
                            ),
                            Text(
                              value.youMayLoveBooks[index].metadata.author[0].name,
                              style: AppTextStyles.h5.copyWith(color: AppColors.border),
                            ),
                          ],
                        );
                      },
                    ),
                    error: (value) => ErrorComponent(errorReason: value.error, imageHeight: 200.h),
                  );
                },
              )),
        ],
      ),
    );
  }
}

class YouMayLoveLoading extends StatelessWidget {
  const YouMayLoveLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 7,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.only(left: 24.w),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.r),
                  topRight: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r),
                  bottomLeft: Radius.circular(4.r),
                ),
                child: Container(
                  width: 108.w,
                  height: 166.h,
                  color: AppColors.bgColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 26.h, bottom: 18.h),
                child: Container(
                  width: 40.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.bgColor,
                  ),
                ),
              ),
              Container(
                width: 90.w,
                height: 5.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.bgColor,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(width: 24.w),
    );
  }
}
