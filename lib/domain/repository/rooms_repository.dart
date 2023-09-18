import '../../data/models/room/room_model.dart';

abstract class RoomsRepository {
  Future<List<RoomModel>> fetchRooms();
}
