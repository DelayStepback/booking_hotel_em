import 'package:booking_hotel_em/data/datasources/remote/hotel_data_source.dart';
import 'package:booking_hotel_em/data/models/hotel/hotel_model.dart';
import 'package:booking_hotel_em/domain/repository/hotel_repository.dart';

class HotelRepositoryImpl implements HotelRepository{
  final HotelDataSource _hotelDataSource;
  HotelRepositoryImpl(this._hotelDataSource);
  @override
  Future<HotelModel> fetchHotel() async {
    final hotel = await _hotelDataSource.fetchHotel();
    return hotel;
  }

}