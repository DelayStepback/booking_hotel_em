import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
class ButtonNav extends StatelessWidget {
  const ButtonNav({
    super.key,
    required this.text
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 343.w,
      decoration: BoxDecoration(color: AppColors.primaryBlue,
          borderRadius: const BorderRadius.all(Radius.circular(15)).r),
      child: Center(child: Text(text, style: AppTextStyles.whiteNormalBold,)),
    );
  }
}