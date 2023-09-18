import 'package:booking_hotel_em/data/datasources/mock/hotel_mock_source.dart';
import 'package:booking_hotel_em/data/datasources/remote/hotel_data_source.dart';
import 'package:booking_hotel_em/data/models/hotel/hotel_model.dart';
import 'package:booking_hotel_em/domain/repository/hotel_repository.dart';

class HotelRepositoryMock implements HotelRepository{
  @override
  Future<HotelModel> fetchHotel() async {
    final hotel = HotelMockSource().fetchHotels();
    return hotel;
  }

}