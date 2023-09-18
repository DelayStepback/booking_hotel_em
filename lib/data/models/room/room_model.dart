


import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';

part 'room_model.g.dart';

@freezed
class RoomModel with _$RoomModel {
  factory RoomModel({
    required int? id,
    required String? name,
    required int? price,
    @JsonKey(name: 'price_per', required: true) String? pricePer,
    required List<String>? peculiarities,
    @JsonKey(name: 'image_urls', required: true) List<String>? imageUrls,

  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}



