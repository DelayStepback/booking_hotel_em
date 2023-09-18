import 'package:booking_hotel_em/data/datasources/remote/booking_room_data_source.dart';
import 'package:booking_hotel_em/data/repositories/hotel_repository_impl.dart';

import '../data/datasources/remote/hotel_data_source.dart';
import '../data/datasources/remote/rooms_data_source.dart';
import '../data/repositories/booking_room_repository_impl.dart';
import '../data/repositories/rooms_repository_impl.dart';

// Not used GetIt cause few line
abstract class Dependencies {
  // Datasources
  static final hotelDataSource = HotelDataSource();
  static final roomsDataSource = RoomsDataSource();
  static final bookingRoomDataSource = BookingRoomDataSource();

  // TODO: rewrite
  // Mocks
  // static final hotelMockSource = HotelMockSource();

  // Repository
  static final HotelRepository = HotelRepositoryImpl(hotelDataSource);
  static final RoomsRepository = RoomsRepositoryImpl(roomsDataSource);
  static final BookingRoomRepository =
      BookingRoomRepositoryImpl(bookingRoomDataSource);
}
