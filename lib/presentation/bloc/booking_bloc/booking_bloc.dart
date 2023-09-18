import 'package:bloc/bloc.dart';
import 'package:booking_hotel_em/data/models/booking_room/booking_room_model.dart';
import 'package:booking_hotel_em/domain/entities/params_booking_enum.dart';
import 'package:booking_hotel_em/domain/repository/booking_room_repository.dart';
import 'booking_event.dart';
import 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final BookingRoomRepository _bookingRoomRepository;

  BookingBloc(this._bookingRoomRepository)
      : super(const BookingState(isLoading: true)) {
    on<LoadBookingRoomEvent>(_onLoadBookingRoomEvent);
    on<ChangeParamEvent>(_onChangeParamEvent);
    on<ChangeExpandedEvent>(_onChangeExpandedEvent);
    on<AddGuestEvent>(_onAddGuestEvent);
  }

  void _onLoadBookingRoomEvent(event, emit) async {
    final BookingRoomModel bookingRoom =
        await _bookingRoomRepository.fetchBookingRoom();
    emit(
      BookingState(
          bookingRoom: bookingRoom,
          guestsCount: 2,
          customerNumber: null,
          customerEmail: null,
          guests: [],
          guestsExpanded: [true, false],
          isLoading: false),
    );
  }

  void _onChangeParamEvent(
      ChangeParamEvent event, Emitter<BookingState> emit) async {
    final BookingEnum param = event.param;
    final String val = event.val;
    final int? guestOrder = event.guestOrder;

    switch (param) {
      case BookingEnum.phoneNumber:
        emit(state.copyWith(customerNumber: '+77833'));
        break;
      case BookingEnum.email:
        // do smth
        break;
      case BookingEnum.firstName:
        break;
      case BookingEnum.lastName:
        break;
      case BookingEnum.birthdayDate:
        break;
      case BookingEnum.citizenship:
        break;
      case BookingEnum.passportNumber:
        break;
      case BookingEnum.passportValidityPeriod:
        break;
    }
  }

  void _onChangeExpandedEvent(
      ChangeExpandedEvent event, Emitter<BookingState> emit) {
    final int index = event.index;
    List<bool> guestsExpanded = List.from(event.guestsExpanded);
    guestsExpanded[index] = !(guestsExpanded[index]);
    emit(state.copyWith(guestsExpanded: guestsExpanded));
  }

  void _onAddGuestEvent(AddGuestEvent event, emit) {
    int guestCount = event.guestCount;
    final List<bool> guestsExpanded = List.of(event.guestsExpanded);
    guestsExpanded.add(false);
    if (guestCount < 5) {
      guestCount++;
    }
    emit(state.copyWith(
        guestsCount: guestCount, guestsExpanded: guestsExpanded));
  }
}
