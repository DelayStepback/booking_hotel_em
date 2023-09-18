import 'package:booking_hotel_em/data/models/hotel/hotel_model.dart';

abstract class HotelRepository {
  Future<HotelModel> fetchHotel();
}
