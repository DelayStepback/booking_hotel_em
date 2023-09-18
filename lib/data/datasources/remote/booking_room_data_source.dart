import 'package:dio/dio.dart';
import 'package:booking_hotel_em/common/constants/api_config.dart';
import '../../models/booking_room/booking_room_model.dart';

class BookingRoomDataSource {
  final Dio _dio = Dio();

  Future<BookingRoomModel> fetchBookingRoom() async {
    try {
      final response = await _dio.get(
        ApiConfig.bookingRoomApiUrl,
      );
      final bookingRoomData = response.data;
      final bookingRoom = BookingRoomModel.fromJson(bookingRoomData);
      return bookingRoom;
    } catch (error) {
      throw Exception('Failed to fetch bookingRoom: $error');
    }
  }
}
