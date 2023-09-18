import 'package:booking_hotel_em/common/constants/app_colors.dart';
import 'package:booking_hotel_em/common/constants/app_strings.dart';
import 'package:booking_hotel_em/common/constants/app_text_styles.dart';
import 'package:booking_hotel_em/domain/func/get_title_from_name.dart';
import 'package:booking_hotel_em/domain/func/make_cost_string_format.dart';
import 'package:booking_hotel_em/presentation/bloc/hotel_bloc/hotel_bloc.dart';
import 'package:booking_hotel_em/presentation/bloc/hotel_bloc/hotel_event.dart';
import 'package:booking_hotel_em/presentation/components/button_nav.dart';
import 'package:booking_hotel_em/presentation/components/mark_yellow_and_title.dart';
import 'package:booking_hotel_em/presentation/components/slider_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../common/constants/app_icons.dart';
import '../../data/models/hotel/hotel_model.dart';
import '../components/loading/loading_screen.dart';
import '../components/peculiarities.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HotelBloc>().state;
    return state.when(
      loading: () {
        context.read<HotelBloc>().add(LoadEvent(id: id));
        return const LoadingScreen();
      },
      loaded: (hotel) => _HotelScreenShow(
        hotel: hotel,
      ),
      error: (error) => Text('error to load $error'),
    );
  }
}

class _HotelScreenShow extends StatelessWidget {
  const _HotelScreenShow({super.key, required this.hotel});

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: ListView(
        children: [
          _FirstBlock(hotel: hotel),
          SizedBox(height: 8.h),
          _SecondBlock(hotel: hotel),
          SizedBox(height: 12.h),
          _ThirdBlock(title: getTitleFromName(hotel.address!),),
        ],
      ),
    );
  }
}

class _FirstBlock extends StatelessWidget {
  const _FirstBlock({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(12).r,
            bottomRight: const Radius.circular(12).r),
        color: AppColors.primaryWhite,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Center(
              child: Text(
                AppStrings.hotel,
                style: AppTextStyles.titleSmallStyle,
              ),
            ),
            SizedBox(height: 19.h),
            SliderDefault(
              images: hotel.imageUrls,
            ),
            SizedBox(height: 16.h),
            MarkYellowAndTitle(rating: hotel.rating.toString(), ratingName: hotel.ratingName.toString(), name: getTitleFromName(hotel.address!), address: hotel.address.toString()),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${AppStrings.minimalPrice} ${makeCostStringFormat(hotel.minimalPrice.toString())}',
                  style: AppTextStyles.bigInfoTitleStyle,
                ),
                SizedBox(width: 8.w),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0).h,
                  child: Text(
                    '${hotel.priceForIt?.toLowerCase()}',
                    style: AppTextStyles.greyMiddleThinTitle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}



class _SecondBlock extends StatelessWidget {
  const _SecondBlock({super.key, required this.hotel});

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 428.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          const Radius.circular(12).r,
        ),
        color: AppColors.primaryWhite,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.aboutHotel,
              style: AppTextStyles.titleStyle,
            ),
            SizedBox(height: 16.h),
            Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: peculiarities(hotel.aboutHotel!.peculiarities!)),
            SizedBox(height: 12.h),
            Text(
              hotel.aboutHotel!.description!,
              style: AppTextStyles.descriptionThin,
            ),
            SizedBox(height: 16.h),
            Container(
              padding: const EdgeInsets.all(16).r,
              decoration: BoxDecoration(
                  color: AppColors.secondaryGray,
                  borderRadius: const BorderRadius.all(Radius.circular(15)).r),
              child: Column(children: [
                _ButtonMustHave(
                  title: AppStrings.panel1,
                  asset: AppStrings.assetPanel1,
                ),
                _Divider(),
                _ButtonMustHave(
                    title: AppStrings.panel2, asset: AppStrings.assetPanel2),
                _Divider(),
                _ButtonMustHave(
                    title: AppStrings.panel3, asset: AppStrings.assetPanel3),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class _ButtonMustHave extends StatelessWidget {
  const _ButtonMustHave({super.key, required this.title, required this.asset});

  final String title;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          asset,
          width: 24.r,
          height: 24.r,
        ),
        SizedBox(
          width: 12.w,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.descriptionBold,
                  ),
                  Text(
                    AppStrings.mustHave,
                    style: AppTextStyles.greySmallBoldTitle,
                  ),
                ],
              ),
              AppIcons.forwardArrow
            ],
          ),
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 38,
      endIndent: 0,
    );
  }
}

class _ThirdBlock extends StatelessWidget {
  const _ThirdBlock({
    super.key,
    required this.title
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 88.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryWhite,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0).r,
        child: InkWell(
          onTap: (){
            context.goNamed('rooms', pathParameters: {'id': '1', 'title': title});
          },
          child: ButtonNav(text: AppStrings.toSelectRoom,)
        ),
      ),
    ]);
  }
}
