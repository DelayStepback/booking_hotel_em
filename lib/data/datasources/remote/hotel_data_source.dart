import 'package:booking_hotel_em/data/models/hotel/hotel_model.dart';
import 'package:dio/dio.dart';
import 'package:booking_hotel_em/common/constants/api_config.dart';

class HotelDataSource {
  final Dio _dio = Dio();

  Future<HotelModel> fetchHotel() async {
    try {
      final response = await _dio.get(
        ApiConfig.hotelsApiUrl,
      );
      final hotelData = response.data;
      final hotel = HotelModel.fromJson(hotelData);
      return hotel;
    } catch (error) {
      throw Exception('Failed to fetch hotels: $error');
    }
  }
}
