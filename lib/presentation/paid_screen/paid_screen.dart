import 'package:booking_hotel_em/common/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_icons.dart';
import '../../common/constants/app_text_styles.dart';
import '../components/button_nav.dart';

class PaidScreen extends StatelessWidget {
  const PaidScreen(
      {super.key, required this.id, required this.title, required this.roomId});

  final String id;
  final String title;
  final String roomId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryWhite,
        centerTitle: true,
        title: Text(
          AppStrings.paidTitle,
          style: AppTextStyles.titleSmallStyle,
        ),
        leading: IconButton(
            onPressed: () =>
                context.goNamed('booking', pathParameters: {'id': '1', 'title': title, 'roomId': roomId}),
            icon: AppIcons.backArrow),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryWhite,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 122.h,
            ),
            Container(
              width: 94.r,
              height: 94.r,
              padding: const EdgeInsets.all(25),
              decoration: ShapeDecoration(
                color: AppColors.appBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
              child: Image.asset(
                AppStrings.assetPaidPage,
                width: 44.r,
                height: 44.r,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              AppStrings.orderInProcessing,
              style: AppTextStyles.titleStyle,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppStrings.processedInfo,
              style: AppTextStyles.greyMiddleThinTitle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 246.h,
            ),
            InkWell(
                onTap: () {
                  context.goNamed("hotel", pathParameters: {'id': '1'});
                },
                child: ButtonNav(text: AppStrings.paidSuper))
          ],
        ),
      ),
    );
  }
}
