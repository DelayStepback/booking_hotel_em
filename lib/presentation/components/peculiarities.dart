import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
List<Widget> peculiarities(List<String> peculiarities) {
  return List<Widget>.generate(peculiarities.length, (index) {
    return Container(
      margin: const EdgeInsets.only(right: 8, bottom: 8).w,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5).w,
      decoration: BoxDecoration(
        color: AppColors.secondaryGray,
//          shape: currentIndex == index ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: const BorderRadius.all(Radius.circular(5)).r,
      ),
      child: Text(
        peculiarities[index],
        style: AppTextStyles.greyMiddleBoldTitle,
      ),
    );
  });
}