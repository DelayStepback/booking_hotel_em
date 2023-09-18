// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AboutHotelModel _$$_AboutHotelModelFromJson(Map<String, dynamic> json) =>
    _$_AboutHotelModel(
      description: json['description'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AboutHotelModelToJson(_$_AboutHotelModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
