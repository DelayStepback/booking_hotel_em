import 'dart:convert';

import 'package:booking_hotel_em/data/datasources/mock/mock_config.dart';

import '../../models/hotel/hotel_model.dart';

// TODO: delete if API's not 504 error
class HotelMockSource {
  Future<HotelModel> fetchHotels() async {
    try {
      final response = jsonDecode(MockConfig.hotelMock);

      final hotelData = response;
      final hotel = HotelModel.fromJson(hotelData);

      return hotel;
    } catch (error) {
      throw Exception('Failed to fetch hotels: $error');
    }
  }
}
