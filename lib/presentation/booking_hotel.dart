import 'package:booking_hotel_em/common/router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingHotelApp extends StatelessWidget {
  const BookingHotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO : create providers Dependency.BLahblah
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          title: 'Booking Hotel',
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
    );
  }
}
