import '../../domain/repository/booking_room_repository.dart';
import '../datasources/remote/booking_room_data_source.dart';
import '../models/booking_room/booking_room_model.dart';

class BookingRoomRepositoryImpl implements BookingRoomRepository {
  final BookingRoomDataSource _bookingRoomDataSource;

  BookingRoomRepositoryImpl(this._bookingRoomDataSource);

  @override
  Future<BookingRoomModel> fetchBookingRoom() async {
    final bookingRoom = await _bookingRoomDataSource.fetchBookingRoom();
    return bookingRoom;
  }
}
