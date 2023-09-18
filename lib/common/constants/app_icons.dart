import 'package:booking_hotel_em/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppIcons {
  static final forwardArrow = Icon(
    Icons.arrow_forward_ios_rounded,
    size: 16.r,
    color: AppColors.primaryBlack,
  );
  static final forwardArrowBlue = Icon(
    Icons.arrow_forward_ios_rounded,
    size: 16.r,
    color: AppColors.primaryBlue,
  );
  static final backArrow = Icon(
    Icons.arrow_back_ios_rounded,
    size: 16.r,
    color: AppColors.primaryBlack,
  );
  static final blueBack = Icon(
    Icons.arrow_back_ios_rounded,
    size: 16.r,
    color: AppColors.primaryBlue,
  );
}
