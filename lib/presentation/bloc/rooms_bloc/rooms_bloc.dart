import 'package:bloc/bloc.dart';
import '../../../data/models/room/room_model.dart';
import '../../../domain/repository/rooms_repository.dart';
import 'rooms_event.dart';
import 'rooms_state.dart';

class RoomsBloc extends Bloc<RoomsEvent, RoomsState> {
  final RoomsRepository _roomsRepository;

  RoomsBloc(this._roomsRepository) : super(const RoomsState.loading()) {
    on<LoadRoomsEvent>(
      (event, emit) async {
        List<RoomModel> rooms = await _roomsRepository.fetchRooms();
        emit(
          RoomsState.loaded(rooms: rooms),
        );
      },
    );
  }
}
