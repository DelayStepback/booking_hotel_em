import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_room_model.freezed.dart';

part 'booking_room_model.g.dart';

@freezed
class BookingRoomModel with _$BookingRoomModel {
  factory BookingRoomModel({
    required int? id,
    @JsonKey(name: 'hotel_name', required: true) String? hotelName,
    @JsonKey(name: 'hotel_adress', required: true) String? hotelAddress,
    @JsonKey(name: 'horating', required: true) int? rating,
    @JsonKey(name: 'rating_name', required: true) String? ratingName,
    required String? departure,
    @JsonKey(name: 'arrival_country', required: true) String? arrivalCountry,
    @JsonKey(name: 'tour_date_start', required: true) String? tourDateStart,
    @JsonKey(name: 'tour_date_stop', required: true) String? tourDateStop,
    @JsonKey(name: 'number_of_nights', required: true) int? numberOfNights,
    required String? room,
    required String? nutrition,
    @JsonKey(name: 'tour_price', required: true) int? tourPrice,
    @JsonKey(name: 'fuel_charge', required: true) int? fuelCharge,
    @JsonKey(name: 'service_charge', required: true) int? serviceCharge,
  }) = _BookingRoomModel;

  factory BookingRoomModel.fromJson(Map<String, dynamic> json) =>
      _$BookingRoomModelFromJson(json);
}
