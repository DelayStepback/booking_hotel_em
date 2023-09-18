import 'package:booking_hotel_em/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  // TODO: height, change to static static final
  static final titleSmallStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: AppColors.primaryBlack,
  );


  static final titleStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 22.sp,
    color: AppColors.primaryBlack,
  );

  static final subTitleStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.primaryBlue,
  );
  static final labelInputGreyStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    fontSize: 17.sp,
    color: AppColors.primaryInputGray,
  );

  static final descriptionThin = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.primaryBlack,
  );
  static final descriptionBold = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.primaryBlack,
  );

  // for price
  static final bigInfoTitleStyle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    fontSize: 30.sp,
    color: AppColors.primaryBlack,
  );

  static final greyMiddleThinTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.primaryGray,
  );
  static final greyMiddleBoldTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.primaryGray,
  );
  static final greySmallBoldTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.primaryGray,
  );
  static final greySmallThinTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.primaryGray,
  );

  static final yellowMiddleBold = TextStyle(
    fontFamily: 'SF Pro Display',
    color: AppColors.primaryYellow,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static final blueSmallBold = TextStyle(
    color: AppColors.primaryBlue,
    fontSize: 14.sp,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
  );
  static final blueNormalBold = TextStyle(
    color: AppColors.primaryBlue,
    fontSize: 16.sp,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
  );

  static final whiteNormalBold = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.primaryWhite,
  );

}
