import 'package:booking_hotel_em/data/datasources/mock/rooms_mock_source.dart';
import 'package:booking_hotel_em/data/models/room/room_model.dart';
import 'package:booking_hotel_em/domain/repository/rooms_repository.dart';

class RoomsRepositoryMock implements RoomsRepository{
  @override
  Future<List<RoomModel>> fetchRooms() {
    final rooms = RoomsMockSource().fetchRooms();
    return rooms;
  }

}