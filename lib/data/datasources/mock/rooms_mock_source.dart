import 'dart:convert';

import 'package:booking_hotel_em/data/datasources/mock/mock_config.dart';

import '../../models/hotel/hotel_model.dart';
import '../../models/room/room_model.dart';

// TODO: delete if API's not 504 error
class RoomsMockSource {
  Future<List<RoomModel>> fetchRooms() async {
    try {
      final response = jsonDecode(MockConfig.roomsMock);

      List<RoomModel> roomsList = List<RoomModel>.from(
        response['rooms'].map(
              (i) => RoomModel.fromJson(i),
        ),
      );
      return roomsList;
    } catch (error) {
      throw Exception('Failed to fetch rooms: $error');
    }
  }
}
