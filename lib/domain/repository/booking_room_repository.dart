import 'package:booking_hotel_em/data/models/booking_room/booking_room_model.dart';

abstract class BookingRoomRepository{
  Future<BookingRoomModel> fetchBookingRoom();
}