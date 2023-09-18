import 'package:booking_hotel_em/common/constants/app_strings.dart';
import 'package:booking_hotel_em/domain/func/make_cost_string_format.dart';
import 'package:booking_hotel_em/presentation/bloc/rooms_bloc/rooms_event.dart';
import 'package:booking_hotel_em/presentation/components/slider_default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_icons.dart';
import '../../common/constants/app_text_styles.dart';
import '../../data/models/room/room_model.dart';
import '../bloc/rooms_bloc/rooms_bloc.dart';
import '../components/button_nav.dart';
import '../components/loading/loading_screen.dart';
import '../components/peculiarities.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({super.key, required this.id, required this.title});

  final String id;
  final String title;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<RoomsBloc>().state;
    return state.when(
      loading: () {
        context.read<RoomsBloc>().add(LoadRoomsEvent());
        return const LoadingScreen();
      },
      loaded: (rooms) => _RoomsScreenShow(
        rooms: rooms,
        id: id,
        title: title,
      ),
      error: (error) => Text('error to load $error'),
    );
  }
}

class _RoomsScreenShow extends StatelessWidget {
  const _RoomsScreenShow(
      {super.key, required this.rooms, required this.title, required this.id});

  final List<RoomModel> rooms;
  final String id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryWhite,
        centerTitle: true,
        title: Text(
          title,
          style: AppTextStyles.titleSmallStyle,
        ),
        leading: IconButton(
            onPressed: () =>
                context.goNamed('hotel', pathParameters: {'id': id}),
            icon: AppIcons.backArrow),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 8.r);
                },
                itemCount: rooms.length,
                itemBuilder: (context, index) {
                  return _SingleRoomPanel(
                    title: title,
                    room: rooms[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}

class _SingleRoomPanel extends StatelessWidget {
  const _SingleRoomPanel({super.key, required this.title, required this.room});
  final String title;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(12).r),
          color: AppColors.primaryWhite),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SliderDefault(images: room.imageUrls),
          SizedBox(
            height: 8.h,
          ),

          Text(
            room.name!,
            style: AppTextStyles.titleStyle,
          ),
          SizedBox(
            height: 8.h,
          ),
          Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              children: peculiarities(room.peculiarities!)),
          SizedBox(
            height: 8.h,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5).r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(const Radius.circular(5).r),
              color: AppColors.secondaryBlue,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppStrings.roomDescription,
                  style: AppTextStyles.blueNormalBold,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2.0).r,
                  child: AppIcons.forwardArrowBlue
                )
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${makeCostStringFormat(room.price.toString())}',
                style: AppTextStyles.bigInfoTitleStyle,
              ),
              SizedBox(width: 8.w),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0).h,
                child: Text(
                  '${room.pricePer?.toLowerCase()}',
                  style: AppTextStyles.greyMiddleThinTitle,
                ),
              ),

            ],
          ),
          SizedBox(height: 16.h,),
          InkWell(
              onTap: (){
                context.goNamed('booking', pathParameters: {'id': '1', 'title': title, 'roomId': room.id.toString()});
              },
              child: ButtonNav(text: AppStrings.selectRoom,)),
        ],
      ),
    );
  }
}


