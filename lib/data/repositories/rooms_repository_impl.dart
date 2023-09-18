import 'package:booking_hotel_em/data/datasources/remote/rooms_data_source.dart';
import '../../domain/repository/rooms_repository.dart';
import '../models/room/room_model.dart';

class RoomsRepositoryImpl implements RoomsRepository {
  final RoomsDataSource _roomsDataSource;

  RoomsRepositoryImpl(this._roomsDataSource);

  @override
  Future<List<RoomModel>> fetchRooms() async {
    final rooms = await _roomsDataSource.fetchRooms();
    return rooms;
  }
}
