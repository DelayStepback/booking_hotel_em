// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadCurrBooking,
    required TResult Function(BookingEnum param, String val, int? guestOrder)
        changeParamEvent,
    required TResult Function(List<bool> guestsExpanded, int index)
        changeExpandedEvent,
    required TResult Function(int guestCount, List<bool> guestsExpanded)
        addGuestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadCurrBooking,
    TResult? Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult? Function(List<bool> guestsExpanded, int index)?
        changeExpandedEvent,
    TResult? Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadCurrBooking,
    TResult Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult Function(List<bool> guestsExpanded, int index)? changeExpandedEvent,
    TResult Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBookingRoomEvent value) loadCurrBooking,
    required TResult Function(ChangeParamEvent value) changeParamEvent,
    required TResult Function(ChangeExpandedEvent value) changeExpandedEvent,
    required TResult Function(AddGuestEvent value) addGuestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult? Function(ChangeParamEvent value)? changeParamEvent,
    TResult? Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult? Function(AddGuestEvent value)? addGuestEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult Function(ChangeParamEvent value)? changeParamEvent,
    TResult Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult Function(AddGuestEvent value)? addGuestEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadBookingRoomEventCopyWith<$Res> {
  factory _$$LoadBookingRoomEventCopyWith(_$LoadBookingRoomEvent value,
          $Res Function(_$LoadBookingRoomEvent) then) =
      __$$LoadBookingRoomEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$LoadBookingRoomEventCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$LoadBookingRoomEvent>
    implements _$$LoadBookingRoomEventCopyWith<$Res> {
  __$$LoadBookingRoomEventCopyWithImpl(_$LoadBookingRoomEvent _value,
      $Res Function(_$LoadBookingRoomEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadBookingRoomEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadBookingRoomEvent implements LoadBookingRoomEvent {
  const _$LoadBookingRoomEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BookingEvent.loadCurrBooking(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBookingRoomEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBookingRoomEventCopyWith<_$LoadBookingRoomEvent> get copyWith =>
      __$$LoadBookingRoomEventCopyWithImpl<_$LoadBookingRoomEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadCurrBooking,
    required TResult Function(BookingEnum param, String val, int? guestOrder)
        changeParamEvent,
    required TResult Function(List<bool> guestsExpanded, int index)
        changeExpandedEvent,
    required TResult Function(int guestCount, List<bool> guestsExpanded)
        addGuestEvent,
  }) {
    return loadCurrBooking(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadCurrBooking,
    TResult? Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult? Function(List<bool> guestsExpanded, int index)?
        changeExpandedEvent,
    TResult? Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
  }) {
    return loadCurrBooking?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadCurrBooking,
    TResult Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult Function(List<bool> guestsExpanded, int index)? changeExpandedEvent,
    TResult Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (loadCurrBooking != null) {
      return loadCurrBooking(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBookingRoomEvent value) loadCurrBooking,
    required TResult Function(ChangeParamEvent value) changeParamEvent,
    required TResult Function(ChangeExpandedEvent value) changeExpandedEvent,
    required TResult Function(AddGuestEvent value) addGuestEvent,
  }) {
    return loadCurrBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult? Function(ChangeParamEvent value)? changeParamEvent,
    TResult? Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult? Function(AddGuestEvent value)? addGuestEvent,
  }) {
    return loadCurrBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult Function(ChangeParamEvent value)? changeParamEvent,
    TResult Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult Function(AddGuestEvent value)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (loadCurrBooking != null) {
      return loadCurrBooking(this);
    }
    return orElse();
  }
}

abstract class LoadBookingRoomEvent implements BookingEvent {
  const factory LoadBookingRoomEvent({required final String id}) =
      _$LoadBookingRoomEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$LoadBookingRoomEventCopyWith<_$LoadBookingRoomEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeParamEventCopyWith<$Res> {
  factory _$$ChangeParamEventCopyWith(
          _$ChangeParamEvent value, $Res Function(_$ChangeParamEvent) then) =
      __$$ChangeParamEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingEnum param, String val, int? guestOrder});
}

/// @nodoc
class __$$ChangeParamEventCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$ChangeParamEvent>
    implements _$$ChangeParamEventCopyWith<$Res> {
  __$$ChangeParamEventCopyWithImpl(
      _$ChangeParamEvent _value, $Res Function(_$ChangeParamEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
    Object? val = null,
    Object? guestOrder = freezed,
  }) {
    return _then(_$ChangeParamEvent(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as BookingEnum,
      val: null == val
          ? _value.val
          : val // ignore: cast_nullable_to_non_nullable
              as String,
      guestOrder: freezed == guestOrder
          ? _value.guestOrder
          : guestOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChangeParamEvent implements ChangeParamEvent {
  const _$ChangeParamEvent(
      {required this.param, required this.val, this.guestOrder});

  @override
  final BookingEnum param;
  @override
  final String val;
  @override
  final int? guestOrder;

  @override
  String toString() {
    return 'BookingEvent.changeParamEvent(param: $param, val: $val, guestOrder: $guestOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeParamEvent &&
            (identical(other.param, param) || other.param == param) &&
            (identical(other.val, val) || other.val == val) &&
            (identical(other.guestOrder, guestOrder) ||
                other.guestOrder == guestOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param, val, guestOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeParamEventCopyWith<_$ChangeParamEvent> get copyWith =>
      __$$ChangeParamEventCopyWithImpl<_$ChangeParamEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadCurrBooking,
    required TResult Function(BookingEnum param, String val, int? guestOrder)
        changeParamEvent,
    required TResult Function(List<bool> guestsExpanded, int index)
        changeExpandedEvent,
    required TResult Function(int guestCount, List<bool> guestsExpanded)
        addGuestEvent,
  }) {
    return changeParamEvent(param, val, guestOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadCurrBooking,
    TResult? Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult? Function(List<bool> guestsExpanded, int index)?
        changeExpandedEvent,
    TResult? Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
  }) {
    return changeParamEvent?.call(param, val, guestOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadCurrBooking,
    TResult Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult Function(List<bool> guestsExpanded, int index)? changeExpandedEvent,
    TResult Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (changeParamEvent != null) {
      return changeParamEvent(param, val, guestOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBookingRoomEvent value) loadCurrBooking,
    required TResult Function(ChangeParamEvent value) changeParamEvent,
    required TResult Function(ChangeExpandedEvent value) changeExpandedEvent,
    required TResult Function(AddGuestEvent value) addGuestEvent,
  }) {
    return changeParamEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult? Function(ChangeParamEvent value)? changeParamEvent,
    TResult? Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult? Function(AddGuestEvent value)? addGuestEvent,
  }) {
    return changeParamEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult Function(ChangeParamEvent value)? changeParamEvent,
    TResult Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult Function(AddGuestEvent value)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (changeParamEvent != null) {
      return changeParamEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeParamEvent implements BookingEvent {
  const factory ChangeParamEvent(
      {required final BookingEnum param,
      required final String val,
      final int? guestOrder}) = _$ChangeParamEvent;

  BookingEnum get param;
  String get val;
  int? get guestOrder;
  @JsonKey(ignore: true)
  _$$ChangeParamEventCopyWith<_$ChangeParamEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeExpandedEventCopyWith<$Res> {
  factory _$$ChangeExpandedEventCopyWith(_$ChangeExpandedEvent value,
          $Res Function(_$ChangeExpandedEvent) then) =
      __$$ChangeExpandedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<bool> guestsExpanded, int index});
}

/// @nodoc
class __$$ChangeExpandedEventCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$ChangeExpandedEvent>
    implements _$$ChangeExpandedEventCopyWith<$Res> {
  __$$ChangeExpandedEventCopyWithImpl(
      _$ChangeExpandedEvent _value, $Res Function(_$ChangeExpandedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestsExpanded = null,
    Object? index = null,
  }) {
    return _then(_$ChangeExpandedEvent(
      guestsExpanded: null == guestsExpanded
          ? _value._guestsExpanded
          : guestsExpanded // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeExpandedEvent implements ChangeExpandedEvent {
  const _$ChangeExpandedEvent(
      {required final List<bool> guestsExpanded, required this.index})
      : _guestsExpanded = guestsExpanded;

  final List<bool> _guestsExpanded;
  @override
  List<bool> get guestsExpanded {
    if (_guestsExpanded is EqualUnmodifiableListView) return _guestsExpanded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guestsExpanded);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'BookingEvent.changeExpandedEvent(guestsExpanded: $guestsExpanded, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeExpandedEvent &&
            const DeepCollectionEquality()
                .equals(other._guestsExpanded, _guestsExpanded) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_guestsExpanded), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeExpandedEventCopyWith<_$ChangeExpandedEvent> get copyWith =>
      __$$ChangeExpandedEventCopyWithImpl<_$ChangeExpandedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadCurrBooking,
    required TResult Function(BookingEnum param, String val, int? guestOrder)
        changeParamEvent,
    required TResult Function(List<bool> guestsExpanded, int index)
        changeExpandedEvent,
    required TResult Function(int guestCount, List<bool> guestsExpanded)
        addGuestEvent,
  }) {
    return changeExpandedEvent(guestsExpanded, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadCurrBooking,
    TResult? Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult? Function(List<bool> guestsExpanded, int index)?
        changeExpandedEvent,
    TResult? Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
  }) {
    return changeExpandedEvent?.call(guestsExpanded, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadCurrBooking,
    TResult Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult Function(List<bool> guestsExpanded, int index)? changeExpandedEvent,
    TResult Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (changeExpandedEvent != null) {
      return changeExpandedEvent(guestsExpanded, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBookingRoomEvent value) loadCurrBooking,
    required TResult Function(ChangeParamEvent value) changeParamEvent,
    required TResult Function(ChangeExpandedEvent value) changeExpandedEvent,
    required TResult Function(AddGuestEvent value) addGuestEvent,
  }) {
    return changeExpandedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult? Function(ChangeParamEvent value)? changeParamEvent,
    TResult? Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult? Function(AddGuestEvent value)? addGuestEvent,
  }) {
    return changeExpandedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult Function(ChangeParamEvent value)? changeParamEvent,
    TResult Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult Function(AddGuestEvent value)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (changeExpandedEvent != null) {
      return changeExpandedEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeExpandedEvent implements BookingEvent {
  const factory ChangeExpandedEvent(
      {required final List<bool> guestsExpanded,
      required final int index}) = _$ChangeExpandedEvent;

  List<bool> get guestsExpanded;
  int get index;
  @JsonKey(ignore: true)
  _$$ChangeExpandedEventCopyWith<_$ChangeExpandedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddGuestEventCopyWith<$Res> {
  factory _$$AddGuestEventCopyWith(
          _$AddGuestEvent value, $Res Function(_$AddGuestEvent) then) =
      __$$AddGuestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int guestCount, List<bool> guestsExpanded});
}

/// @nodoc
class __$$AddGuestEventCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$AddGuestEvent>
    implements _$$AddGuestEventCopyWith<$Res> {
  __$$AddGuestEventCopyWithImpl(
      _$AddGuestEvent _value, $Res Function(_$AddGuestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guestCount = null,
    Object? guestsExpanded = null,
  }) {
    return _then(_$AddGuestEvent(
      guestCount: null == guestCount
          ? _value.guestCount
          : guestCount // ignore: cast_nullable_to_non_nullable
              as int,
      guestsExpanded: null == guestsExpanded
          ? _value._guestsExpanded
          : guestsExpanded // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$AddGuestEvent implements AddGuestEvent {
  const _$AddGuestEvent(
      {required this.guestCount, required final List<bool> guestsExpanded})
      : _guestsExpanded = guestsExpanded;

  @override
  final int guestCount;
  final List<bool> _guestsExpanded;
  @override
  List<bool> get guestsExpanded {
    if (_guestsExpanded is EqualUnmodifiableListView) return _guestsExpanded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guestsExpanded);
  }

  @override
  String toString() {
    return 'BookingEvent.addGuestEvent(guestCount: $guestCount, guestsExpanded: $guestsExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGuestEvent &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount) &&
            const DeepCollectionEquality()
                .equals(other._guestsExpanded, _guestsExpanded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guestCount,
      const DeepCollectionEquality().hash(_guestsExpanded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGuestEventCopyWith<_$AddGuestEvent> get copyWith =>
      __$$AddGuestEventCopyWithImpl<_$AddGuestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadCurrBooking,
    required TResult Function(BookingEnum param, String val, int? guestOrder)
        changeParamEvent,
    required TResult Function(List<bool> guestsExpanded, int index)
        changeExpandedEvent,
    required TResult Function(int guestCount, List<bool> guestsExpanded)
        addGuestEvent,
  }) {
    return addGuestEvent(guestCount, guestsExpanded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadCurrBooking,
    TResult? Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult? Function(List<bool> guestsExpanded, int index)?
        changeExpandedEvent,
    TResult? Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
  }) {
    return addGuestEvent?.call(guestCount, guestsExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadCurrBooking,
    TResult Function(BookingEnum param, String val, int? guestOrder)?
        changeParamEvent,
    TResult Function(List<bool> guestsExpanded, int index)? changeExpandedEvent,
    TResult Function(int guestCount, List<bool> guestsExpanded)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (addGuestEvent != null) {
      return addGuestEvent(guestCount, guestsExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBookingRoomEvent value) loadCurrBooking,
    required TResult Function(ChangeParamEvent value) changeParamEvent,
    required TResult Function(ChangeExpandedEvent value) changeExpandedEvent,
    required TResult Function(AddGuestEvent value) addGuestEvent,
  }) {
    return addGuestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult? Function(ChangeParamEvent value)? changeParamEvent,
    TResult? Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult? Function(AddGuestEvent value)? addGuestEvent,
  }) {
    return addGuestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBookingRoomEvent value)? loadCurrBooking,
    TResult Function(ChangeParamEvent value)? changeParamEvent,
    TResult Function(ChangeExpandedEvent value)? changeExpandedEvent,
    TResult Function(AddGuestEvent value)? addGuestEvent,
    required TResult orElse(),
  }) {
    if (addGuestEvent != null) {
      return addGuestEvent(this);
    }
    return orElse();
  }
}

abstract class AddGuestEvent implements BookingEvent {
  const factory AddGuestEvent(
      {required final int guestCount,
      required final List<bool> guestsExpanded}) = _$AddGuestEvent;

  int get guestCount;
  List<bool> get guestsExpanded;
  @JsonKey(ignore: true)
  _$$AddGuestEventCopyWith<_$AddGuestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
