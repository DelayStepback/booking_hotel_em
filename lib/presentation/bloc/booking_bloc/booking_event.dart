import 'package:booking_hotel_em/domain/entities/params_booking_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.loadCurrBooking({required String id}) = LoadBookingRoomEvent;
  const factory BookingEvent.changeParamEvent({required BookingEnum param, required String val, int? guestOrder}) = ChangeParamEvent;
  const factory BookingEvent.changeExpandedEvent({required List<bool> guestsExpanded, required int index}) = ChangeExpandedEvent;
  const factory BookingEvent.addGuestEvent({required int guestCount, required List<bool> guestsExpanded}) = AddGuestEvent;
}