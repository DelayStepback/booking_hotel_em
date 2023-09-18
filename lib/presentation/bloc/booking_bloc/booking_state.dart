import 'package:booking_hotel_em/domain/entities/guest_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/booking_room/booking_room_model.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {

  const factory BookingState ({
    required bool isLoading,
     BookingRoomModel? bookingRoom,
     int? guestsCount,
     String? customerNumber,
     String? customerEmail,
     List<GuestEntity>? guests,
     List<bool>? guestsExpanded,
}) = _BookingState;

}
