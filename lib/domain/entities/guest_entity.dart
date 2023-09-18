import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_entity.freezed.dart';

@freezed
class GuestEntity with _$GuestEntity {
  const factory GuestEntity({
    String? firstName,
    String? lastName,
    String? birthdayDate,
    String? citizenship,
    String? passportNumber,
    String? passportValidityPeriod,
  }) = _GuestEntity;
}

