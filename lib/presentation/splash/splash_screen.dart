import 'package:booking_hotel_em/common/constants/app_colors.dart';
import 'package:booking_hotel_em/common/constants/app_strings.dart';
import 'package:booking_hotel_em/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHotelScreen();
  }

  _navigateToHotelScreen() async {
    await Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        // TODO : Extract '1'
        context.goNamed("hotel", pathParameters: {'id': '1'});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primaryGray, AppColors.primaryBlue],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.authorDescription,
                  style: AppTextStyles.bigInfoTitleStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
