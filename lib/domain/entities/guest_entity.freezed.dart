// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GuestEntity {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get birthdayDate => throw _privateConstructorUsedError;
  String? get citizenship => throw _privateConstructorUsedError;
  String? get passportNumber => throw _privateConstructorUsedError;
  String? get passportValidityPeriod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestEntityCopyWith<GuestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestEntityCopyWith<$Res> {
  factory $GuestEntityCopyWith(
          GuestEntity value, $Res Function(GuestEntity) then) =
      _$GuestEntityCopyWithImpl<$Res, GuestEntity>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? birthdayDate,
      String? citizenship,
      String? passportNumber,
      String? passportValidityPeriod});
}

/// @nodoc
class _$GuestEntityCopyWithImpl<$Res, $Val extends GuestEntity>
    implements $GuestEntityCopyWith<$Res> {
  _$GuestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdayDate = freezed,
    Object? citizenship = freezed,
    Object? passportNumber = freezed,
    Object? passportValidityPeriod = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdayDate: freezed == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenship: freezed == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      passportValidityPeriod: freezed == passportValidityPeriod
          ? _value.passportValidityPeriod
          : passportValidityPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestEntityCopyWith<$Res>
    implements $GuestEntityCopyWith<$Res> {
  factory _$$_GuestEntityCopyWith(
          _$_GuestEntity value, $Res Function(_$_GuestEntity) then) =
      __$$_GuestEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? birthdayDate,
      String? citizenship,
      String? passportNumber,
      String? passportValidityPeriod});
}

/// @nodoc
class __$$_GuestEntityCopyWithImpl<$Res>
    extends _$GuestEntityCopyWithImpl<$Res, _$_GuestEntity>
    implements _$$_GuestEntityCopyWith<$Res> {
  __$$_GuestEntityCopyWithImpl(
      _$_GuestEntity _value, $Res Function(_$_GuestEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthdayDate = freezed,
    Object? citizenship = freezed,
    Object? passportNumber = freezed,
    Object? passportValidityPeriod = freezed,
  }) {
    return _then(_$_GuestEntity(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdayDate: freezed == birthdayDate
          ? _value.birthdayDate
          : birthdayDate // ignore: cast_nullable_to_non_nullable
              as String?,
      citizenship: freezed == citizenship
          ? _value.citizenship
          : citizenship // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      passportValidityPeriod: freezed == passportValidityPeriod
          ? _value.passportValidityPeriod
          : passportValidityPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GuestEntity implements _GuestEntity {
  const _$_GuestEntity(
      {this.firstName,
      this.lastName,
      this.birthdayDate,
      this.citizenship,
      this.passportNumber,
      this.passportValidityPeriod});

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? birthdayDate;
  @override
  final String? citizenship;
  @override
  final String? passportNumber;
  @override
  final String? passportValidityPeriod;

  @override
  String toString() {
    return 'GuestEntity(firstName: $firstName, lastName: $lastName, birthdayDate: $birthdayDate, citizenship: $citizenship, passportNumber: $passportNumber, passportValidityPeriod: $passportValidityPeriod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuestEntity &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthdayDate, birthdayDate) ||
                other.birthdayDate == birthdayDate) &&
            (identical(other.citizenship, citizenship) ||
                other.citizenship == citizenship) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.passportValidityPeriod, passportValidityPeriod) ||
                other.passportValidityPeriod == passportValidityPeriod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName,
      birthdayDate, citizenship, passportNumber, passportValidityPeriod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestEntityCopyWith<_$_GuestEntity> get copyWith =>
      __$$_GuestEntityCopyWithImpl<_$_GuestEntity>(this, _$identity);
}

abstract class _GuestEntity implements GuestEntity {
  const factory _GuestEntity(
      {final String? firstName,
      final String? lastName,
      final String? birthdayDate,
      final String? citizenship,
      final String? passportNumber,
      final String? passportValidityPeriod}) = _$_GuestEntity;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get birthdayDate;
  @override
  String? get citizenship;
  @override
  String? get passportNumber;
  @override
  String? get passportValidityPeriod;
  @override
  @JsonKey(ignore: true)
  _$$_GuestEntityCopyWith<_$_GuestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
