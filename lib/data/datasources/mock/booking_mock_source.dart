import 'dart:convert';

import 'package:booking_hotel_em/data/datasources/mock/mock_config.dart';

import '../../models/booking_room/booking_room_model.dart';
import '../../models/hotel/hotel_model.dart';

class BookingMockSource {
  Future<BookingRoomModel> fetchBooking() async {
    try {
      final response = jsonDecode(MockConfig.bookingRoomMock);

      final bookingRoomData = response;
      final bookingRoom = BookingRoomModel.fromJson(bookingRoomData);

      return bookingRoom;
    } catch (error) {
      throw Exception('Failed to fetch hotels: $error');
    }
  }
}
