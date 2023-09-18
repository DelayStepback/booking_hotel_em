import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/room/room_model.dart';

part 'rooms_state.freezed.dart';

@freezed
class RoomsState with _$RoomsState {
  const factory RoomsState.loading() = _Loading;

  const factory RoomsState.loaded({required List<RoomModel> rooms}) = _Loaded;
  const factory RoomsState.error({required String? error}) = _Error;

}
