import 'package:booking_hotel_em/common/constants/api_config.dart';
import 'package:dio/dio.dart';

import '../../models/room/room_model.dart';

class RoomsDataSource {
  final Dio _dio = Dio();

  Future<List<RoomModel>> fetchRooms() async {
    try {
      final response = await _dio.get(
        ApiConfig.roomsApiUrl,
      );
      List<RoomModel> roomsList = List<RoomModel>.from(
        response.data['rooms'].map(
              (i) => RoomModel.fromJson(i),
        ),
      );
      return roomsList;
    } catch (error) {
      throw Exception('Failed to fetch rooms: $error');
    }
  }
}
