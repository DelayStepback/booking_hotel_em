import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';

class MarkYellowAndTitle extends StatelessWidget {
  const MarkYellowAndTitle({
    super.key,
    required this.rating,
    required this.ratingName, required this.name, required this.address,

  });
  final String name;
  final String address;
  final String rating;
  final String ratingName;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 5.h,
          ),
          decoration: BoxDecoration(
              color: AppColors.secondaryYellow,
              borderRadius: BorderRadius.all(const Radius.circular(5).r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.star,
                size: 15.r,
                color: AppColors.primaryYellow,
              ),
              SizedBox(width: 2.w),
              Text(
                '${rating} ${ratingName}',
                style: AppTextStyles.yellowMiddleBold,
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          '${name}',
          style: AppTextStyles.titleStyle,
        ),
        SizedBox(height: 8.h),
        Text(
          '${address}',
          style: AppTextStyles.blueSmallBold,
        ),
      ],
    );
  }
}