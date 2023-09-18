import 'package:bloc/bloc.dart';

import '../../../data/models/hotel/hotel_model.dart';
import '../../../domain/repository/hotel_repository.dart';
import 'hotel_event.dart';
import 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final HotelRepository _hotelRepository;

  HotelBloc(this._hotelRepository) : super(const HotelState.loading()) {
    on<LoadEvent>(
      (event, emit) async {
        HotelModel hotel = await _hotelRepository.fetchHotel();
        emit(
          HotelState.loaded(hotel: hotel),
        );
      },
    );
  }
}
