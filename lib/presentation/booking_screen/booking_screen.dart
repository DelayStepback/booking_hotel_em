import 'package:booking_hotel_em/common/constants/app_strings.dart';
import 'package:booking_hotel_em/common/utils/validators.dart';
import 'package:booking_hotel_em/data/models/booking_room/booking_room_model.dart';
import 'package:booking_hotel_em/domain/entities/params_booking_enum.dart';
import 'package:booking_hotel_em/domain/func/make_cost_string_format.dart';
import 'package:booking_hotel_em/presentation/bloc/booking_bloc/booking_event.dart';
import 'package:booking_hotel_em/presentation/bloc/booking_bloc/booking_state.dart';
import 'package:booking_hotel_em/presentation/components/button_nav.dart';
import 'package:booking_hotel_em/presentation/components/loading/loading_screen.dart';
import 'package:booking_hotel_em/presentation/components/mark_yellow_and_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../common/constants/app_colors.dart';
import '../../common/constants/app_icons.dart';
import '../../common/constants/app_text_styles.dart';
import '../../domain/entities/guest_entity.dart';
import '../bloc/booking_bloc/booking_bloc.dart';
import 'dart:math' as math;

class BookingScreen extends StatelessWidget {
  const BookingScreen(
      {super.key, required this.id, required this.title, required this.roomId});

  final String id;
  final String title;
  final String roomId;

  @override
  Widget build(BuildContext context) {
    return _BookingShowScreen(
      id_: id,
      title_: title,
      roomId: roomId,
    );
  }
}
class _BookingShowScreen extends StatefulWidget {
  _BookingShowScreen({super.key, required this.id_, required this.title_, required this.roomId});

  final String id_;
  final String title_;
  final String roomId;
  @override
  State<_BookingShowScreen> createState() => _BookingShowScreenState();
}

class _BookingShowScreenState extends State<_BookingShowScreen> {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: safe zones

    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryWhite,
        centerTitle: true,
        title: Text(
          AppStrings.booking,
          style: AppTextStyles.titleSmallStyle,
        ),
        leading: IconButton(
            onPressed: () =>
                context
                    .goNamed(
                    'rooms', pathParameters: {'id': widget.id_, 'title': widget.title_}),
            icon: AppIcons.backArrow),
      ),
      body: BlocBuilder<BookingBloc, BookingState>(
        builder: (context, state) {
          if (state.isLoading) {
            context.read<BookingBloc>().add(LoadBookingRoomEvent(id: widget.id_));
            return const LoadingScreen();
          }
          final BookingRoomModel bookingRoom = state.bookingRoom!;
          final String id = widget.id_;
          final String title = widget.title_;
          final int guestsCount = state.guestsCount!;
          final String? customerNumber = state.customerNumber;
          final String? customerEmail = state.customerEmail;
          final List<GuestEntity> guests = state.guests!;
          final List<bool> guestsExpanded = state.guestsExpanded!;
          final String total = makeCostStringFormat((bookingRoom.tourPrice! +
              bookingRoom.fuelCharge! +
              bookingRoom.serviceCharge!)
              .toString());
          return Form(
            key: formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                _FirstBlock(bookingRoom: bookingRoom, title: title),
                SizedBox(
                  height: 8.h,
                ),
                _SecondBlock(bookingRoom: bookingRoom, title: title),
                SizedBox(
                  height: 8.h,
                ),
                const _ThirdBlock(),
                SizedBox(
                  height: 8.r,
                ),

                const _GuestsBlock(
                ),
                SizedBox(
                  height: 8.r,
                ),
                Visibility(
                    visible: guestsCount == 5 ? false : true,
                    child: _AddGuestBlock(
                      guestCount: guestsCount,
                      guestsExpanded: guestsExpanded,
                    )),
                SizedBox(
                  height: 8.r,
                ),
                _SummaryBlock(
                  tourPrice: bookingRoom.tourPrice,
                  fuelCollection: bookingRoom.fuelCharge,
                  serviceCollection: bookingRoom.serviceCharge,
                  total: total,
                ),
                SizedBox(
                  height: 8.r,
                ),
                InkWell(
                  onTap: () {
                    print(formKey.currentState!.validate().toString());
                    if (formKey.currentState!.validate()) {
                      context.goNamed(
                        'paid',
                        pathParameters: {
                          'id': '1',
                          'title': title,
                          'roomId': bookingRoom.id.toString()
                        },
                      );
                    }
                  },
                  child: Container(
                      padding: const EdgeInsets.all(16).r,
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                      ),
                      child: ButtonNav(text: '${AppStrings.pay} ${total}')),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class _FirstBlock extends StatelessWidget {
  const _FirstBlock(
      {super.key, required this.bookingRoom, required this.title});

  final BookingRoomModel bookingRoom;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(const Radius.circular(12).r),
        color: AppColors.primaryWhite,
      ),
      child: MarkYellowAndTitle(
          rating: bookingRoom.rating.toString(),
          ratingName: bookingRoom.ratingName.toString(),
          name: title,
          address: bookingRoom.hotelAddress.toString()),
    );
  }
}

class _SecondBlock extends StatelessWidget {
  const _SecondBlock(
      {super.key, required this.bookingRoom, required this.title});

  final BookingRoomModel bookingRoom;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(const Radius.circular(12).r),
        color: AppColors.primaryWhite,
      ),
      child: Column(
        children: [
          _SingleRowInfo(
            text1: AppStrings.flightFrom,
            text2: bookingRoom.departure.toString(),
            width: 203,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.countryCity,
            text2: bookingRoom.arrivalCountry.toString(),
            width: 203,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.dates,
            text2: '${bookingRoom.tourDateStart} – ${bookingRoom.tourDateStop}',
            width: 203,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.nights,
            text2: bookingRoom.numberOfNights.toString(),
            width: 203,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.hotel,
            text2: title.toString(),
            width: 203,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.room,
            text2: bookingRoom.room.toString(),
            width: 203,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.nutrition,
            text2: bookingRoom.nutrition.toString(),
            width: 203,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}

class _SingleRowInfo extends StatelessWidget {
  const _SingleRowInfo({
    super.key,
    required this.text1,
    required this.text2,
    required this.width,
    required this.alignment,
  });

  final String text1;
  final String text2;
  final int width;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: AppTextStyles.greyMiddleThinTitle,
        ),
        SizedBox(
          width: width.r,
          child: Align(
            alignment: alignment,
            child: Text(
              text2,
              style: AppTextStyles.descriptionThin,
            ),
          ),
        ),
      ],
    );
  }
}

class _ThirdBlock extends StatelessWidget {
  const _ThirdBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(const Radius.circular(12).r),
        color: AppColors.primaryWhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.infoAboutCustomer,
            style: AppTextStyles.titleStyle,
          ),
          SizedBox(
            height: 20.h,
          ),
          _MyTextFormField(
            // TODO: change RegExp
            regExp: numRegExp,
            label: AppStrings.phoneNumer,
            bookingEnum: BookingEnum.phoneNumber,
          ),
          SizedBox(
            height: 8.h,
          ),
          _MyTextFormField(
            regExp: emailValidatorRegExp,
            label: AppStrings.email,
            bookingEnum: BookingEnum.email,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            AppStrings.securityText,
            style: AppTextStyles.greySmallThinTitle,
          ),
        ],
      ),
    );
  }
}

class _MyTextFormField extends StatefulWidget {
  _MyTextFormField({super.key,
    required this.regExp,
    required this.label,
    required this.bookingEnum});

  final RegExp regExp;
  final String label;
  final BookingEnum bookingEnum;

  @override
  State<_MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<_MyTextFormField> {
  Color bgColor = AppColors.secondaryInputGray;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(const Radius.circular(10).r),
        color: bgColor,
      ),
      child: TextFormField(

        decoration: InputDecoration(
          labelText: widget.label,
          border: InputBorder.none,
          labelStyle: AppTextStyles.labelInputGreyStyle,
          errorStyle: const TextStyle(height: 0),
        ),
        inputFormatters: [formatterForField(widget.bookingEnum)],
        validator: (String? value) {
          if (value == null || value.isEmpty ||
              !widget.regExp.hasMatch(value)) {
            setState(() {
              bgColor = AppColors.redAlertInput;
            });
            return '';
          }
          setState(() {
            bgColor = AppColors.secondaryInputGray;
          });

          context.read<BookingBloc>().add(ChangeParamEvent(
            param: widget.bookingEnum,
            val: value.toString(),
          ));

          return null;
        },
      ),
    );
  }
}

class _GuestsBlock extends StatelessWidget {
  const _GuestsBlock(
      {super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        final int guestsCount = state.guestsCount!;
        final List<bool> guestsExpanded = state.guestsExpanded!;
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 8.r);
          },
          itemCount: guestsCount,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(12).r),
                color: AppColors.primaryWhite,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${AppStrings.touristsOrder[index]} ${AppStrings
                            .tourist}',
                        style: AppTextStyles.titleStyle,
                      ),
                      InkWell(
                        onTap: () {
                          context.read<BookingBloc>().add(ChangeExpandedEvent(
                              guestsExpanded: guestsExpanded, index: index));
                        },
                        child: Container(
                          width: 32.r,
                          height: 32.r,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(6).r),
                            color: AppColors.secondaryBlue,
                          ),
                          child: Transform.rotate(
                            angle: guestsExpanded[index]
                                ? 90 * math.pi / 180
                                : -90 * math.pi / 180,
                            child: AppIcons.blueBack
                          ),
                        ),
                      )
                    ],
                  ),

                  Visibility(
                    visible: guestsExpanded[index],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        _MyTextFormField(
                            regExp: alphabetTextRegExp,
                            label: AppStrings.firstname,
                            bookingEnum: BookingEnum.firstName),
                        SizedBox(
                          height: 8.h,
                        ),
                        _MyTextFormField(
                            regExp: alphabetTextRegExp,
                            label: AppStrings.lastname,
                            bookingEnum: BookingEnum.lastName),
                        SizedBox(
                          height: 8.h,
                        ),
                        _MyTextFormField(
                            regExp: numRegExp,
                            label: AppStrings.birthday,
                            bookingEnum: BookingEnum.birthdayDate),
                        SizedBox(
                          height: 8.h,
                        ),
                        _MyTextFormField(
                            regExp: alphabetTextRegExp,
                            label: AppStrings.citizenship,
                            bookingEnum: BookingEnum.citizenship),
                        SizedBox(
                          height: 8.h,
                        ),
                        _MyTextFormField(
                            regExp: numRegExp,
                            label: AppStrings.passportNumber,
                            bookingEnum: BookingEnum.passportNumber),
                        SizedBox(
                          height: 8.h,
                        ),
                        _MyTextFormField(
                            regExp: numRegExp,
                            label: AppStrings.passportValidityPeriod,
                            bookingEnum: BookingEnum.passportValidityPeriod),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _AddGuestBlock extends StatelessWidget {
  const _AddGuestBlock(
      {super.key, required this.guestCount, required this.guestsExpanded});

  final int guestCount;
  final List<bool> guestsExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(const Radius.circular(12).r),
        color: AppColors.primaryWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${AppStrings.addTourist}',
            style: AppTextStyles.titleStyle,
          ),
          InkWell(
            onTap: () {
              context.read<BookingBloc>().add(AddGuestEvent(
                  guestCount: guestCount, guestsExpanded: guestsExpanded));
            },
            child: Container(
              width: 32.r,
              height: 32.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(6).r),
                color: AppColors.primaryBlue,
              ),
              child: Icon(
                Icons.add,
                size: 17.r,
                color: AppColors.primaryWhite,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _SummaryBlock extends StatelessWidget {
  const _SummaryBlock({super.key,
    required this.tourPrice,
    required this.fuelCollection,
    required this.serviceCollection,
    this.total});

  final int? tourPrice;
  final int? fuelCollection;
  final int? serviceCollection;
  final String? total;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(const Radius.circular(12).r),
        color: AppColors.primaryWhite,
      ),
      child: Column(
        children: [
          _SingleRowInfo(
            text1: AppStrings.tour,
            text2: '${makeCostStringFormat(tourPrice.toString())} ',
            width: 132,
            alignment: Alignment.centerRight,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.fuelCollection,
            text2: '${makeCostStringFormat(fuelCollection.toString())} ',
            width: 132,
            alignment: Alignment.centerRight,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.serviceCollection,
            text2: '${makeCostStringFormat(serviceCollection.toString())} ',
            width: 132,
            alignment: Alignment.centerRight,
          ),
          SizedBox(
            height: 16.h,
          ),
          _SingleRowInfo(
            text1: AppStrings.toPaid,
            text2: '$total',
            width: 132,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
