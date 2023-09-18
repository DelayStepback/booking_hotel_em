// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingState {
  bool get isLoading => throw _privateConstructorUsedError;
  BookingRoomModel? get bookingRoom => throw _privateConstructorUsedError;
  int? get guestsCount => throw _privateConstructorUsedError;
  String? get customerNumber => throw _privateConstructorUsedError;
  String? get customerEmail => throw _privateConstructorUsedError;
  List<GuestEntity>? get guests => throw _privateConstructorUsedError;
  List<bool>? get guestsExpanded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call(
      {bool isLoading,
      BookingRoomModel? bookingRoom,
      int? guestsCount,
      String? customerNumber,
      String? customerEmail,
      List<GuestEntity>? guests,
      List<bool>? guestsExpanded});

  $BookingRoomModelCopyWith<$Res>? get bookingRoom;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? bookingRoom = freezed,
    Object? guestsCount = freezed,
    Object? customerNumber = freezed,
    Object? customerEmail = freezed,
    Object? guests = freezed,
    Object? guestsExpanded = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingRoom: freezed == bookingRoom
          ? _value.bookingRoom
          : bookingRoom // ignore: cast_nullable_to_non_nullable
              as BookingRoomModel?,
      guestsCount: freezed == guestsCount
          ? _value.guestsCount
          : guestsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNumber: freezed == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      guests: freezed == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestEntity>?,
      guestsExpanded: freezed == guestsExpanded
          ? _value.guestsExpanded
          : guestsExpanded // ignore: cast_nullable_to_non_nullable
              as List<bool>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingRoomModelCopyWith<$Res>? get bookingRoom {
    if (_value.bookingRoom == null) {
      return null;
    }

    return $BookingRoomModelCopyWith<$Res>(_value.bookingRoom!, (value) {
      return _then(_value.copyWith(bookingRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookingStateCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$_BookingStateCopyWith(
          _$_BookingState value, $Res Function(_$_BookingState) then) =
      __$$_BookingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      BookingRoomModel? bookingRoom,
      int? guestsCount,
      String? customerNumber,
      String? customerEmail,
      List<GuestEntity>? guests,
      List<bool>? guestsExpanded});

  @override
  $BookingRoomModelCopyWith<$Res>? get bookingRoom;
}

/// @nodoc
class __$$_BookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_BookingState>
    implements _$$_BookingStateCopyWith<$Res> {
  __$$_BookingStateCopyWithImpl(
      _$_BookingState _value, $Res Function(_$_BookingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? bookingRoom = freezed,
    Object? guestsCount = freezed,
    Object? customerNumber = freezed,
    Object? customerEmail = freezed,
    Object? guests = freezed,
    Object? guestsExpanded = freezed,
  }) {
    return _then(_$_BookingState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingRoom: freezed == bookingRoom
          ? _value.bookingRoom
          : bookingRoom // ignore: cast_nullable_to_non_nullable
              as BookingRoomModel?,
      guestsCount: freezed == guestsCount
          ? _value.guestsCount
          : guestsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      customerNumber: freezed == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      customerEmail: freezed == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      guests: freezed == guests
          ? _value._guests
          : guests // ignore: cast_nullable_to_non_nullable
              as List<GuestEntity>?,
      guestsExpanded: freezed == guestsExpanded
          ? _value._guestsExpanded
          : guestsExpanded // ignore: cast_nullable_to_non_nullable
              as List<bool>?,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState(
      {required this.isLoading,
      this.bookingRoom,
      this.guestsCount,
      this.customerNumber,
      this.customerEmail,
      final List<GuestEntity>? guests,
      final List<bool>? guestsExpanded})
      : _guests = guests,
        _guestsExpanded = guestsExpanded;

  @override
  final bool isLoading;
  @override
  final BookingRoomModel? bookingRoom;
  @override
  final int? guestsCount;
  @override
  final String? customerNumber;
  @override
  final String? customerEmail;
  final List<GuestEntity>? _guests;
  @override
  List<GuestEntity>? get guests {
    final value = _guests;
    if (value == null) return null;
    if (_guests is EqualUnmodifiableListView) return _guests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<bool>? _guestsExpanded;
  @override
  List<bool>? get guestsExpanded {
    final value = _guestsExpanded;
    if (value == null) return null;
    if (_guestsExpanded is EqualUnmodifiableListView) return _guestsExpanded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingState(isLoading: $isLoading, bookingRoom: $bookingRoom, guestsCount: $guestsCount, customerNumber: $customerNumber, customerEmail: $customerEmail, guests: $guests, guestsExpanded: $guestsExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.bookingRoom, bookingRoom) ||
                other.bookingRoom == bookingRoom) &&
            (identical(other.guestsCount, guestsCount) ||
                other.guestsCount == guestsCount) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            const DeepCollectionEquality().equals(other._guests, _guests) &&
            const DeepCollectionEquality()
                .equals(other._guestsExpanded, _guestsExpanded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      bookingRoom,
      guestsCount,
      customerNumber,
      customerEmail,
      const DeepCollectionEquality().hash(_guests),
      const DeepCollectionEquality().hash(_guestsExpanded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      __$$_BookingStateCopyWithImpl<_$_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {required final bool isLoading,
      final BookingRoomModel? bookingRoom,
      final int? guestsCount,
      final String? customerNumber,
      final String? customerEmail,
      final List<GuestEntity>? guests,
      final List<bool>? guestsExpanded}) = _$_BookingState;

  @override
  bool get isLoading;
  @override
  BookingRoomModel? get bookingRoom;
  @override
  int? get guestsCount;
  @override
  String? get customerNumber;
  @override
  String? get customerEmail;
  @override
  List<GuestEntity>? get guests;
  @override
  List<bool>? get guestsExpanded;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
