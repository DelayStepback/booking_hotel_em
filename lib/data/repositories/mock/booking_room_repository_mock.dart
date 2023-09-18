import 'package:booking_hotel_em/data/datasources/mock/booking_mock_source.dart';
import 'package:booking_hotel_em/data/models/booking_room/booking_room_model.dart';
import 'package:booking_hotel_em/domain/repository/booking_room_repository.dart';

class BookingRoomRepositoryMock implements BookingRoomRepository {
  @override
  Future<BookingRoomModel> fetchBookingRoom() {
    final bookingRoom = BookingMockSource().fetchBooking();
    return bookingRoom;
  }
}
