import 'package:booking_hotel_em/data/models/about_hotel/about_hotel_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_model.freezed.dart';

part 'hotel_model.g.dart';

@freezed
class HotelModel with _$HotelModel {
  factory HotelModel({
    required int? id,
    @JsonKey(name: 'adress', required: true) String? address,
    @JsonKey(name: 'minimal_price', required: true) int? minimalPrice,
    @JsonKey(name: 'price_for_it', required: true) String? priceForIt,
    required int? rating,
    @JsonKey(name: 'rating_name', required: true) String? ratingName,
    @JsonKey(name: 'image_urls', required: true) List<String>? imageUrls,
    @JsonKey(name: 'about_the_hotel', required: true) AboutHotelModel? aboutHotel,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}
