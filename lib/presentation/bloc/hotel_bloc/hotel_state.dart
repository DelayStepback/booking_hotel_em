import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/hotel/hotel_model.dart';

part 'hotel_state.freezed.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState.loading() = _Loading;

  const factory HotelState.loaded({required HotelModel hotel}) = _Loaded;
  const factory HotelState.error({required String? error}) = _Error;

}
