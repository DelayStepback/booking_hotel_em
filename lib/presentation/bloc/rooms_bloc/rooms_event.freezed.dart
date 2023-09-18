// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRoomsEvent value) loadCurrRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRoomsEvent value)? loadCurrRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRoomsEvent value)? loadCurrRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsEventCopyWith<$Res> {
  factory $RoomsEventCopyWith(
          RoomsEvent value, $Res Function(RoomsEvent) then) =
      _$RoomsEventCopyWithImpl<$Res, RoomsEvent>;
}

/// @nodoc
class _$RoomsEventCopyWithImpl<$Res, $Val extends RoomsEvent>
    implements $RoomsEventCopyWith<$Res> {
  _$RoomsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRoomsEventCopyWith<$Res> {
  factory _$$LoadRoomsEventCopyWith(
          _$LoadRoomsEvent value, $Res Function(_$LoadRoomsEvent) then) =
      __$$LoadRoomsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRoomsEventCopyWithImpl<$Res>
    extends _$RoomsEventCopyWithImpl<$Res, _$LoadRoomsEvent>
    implements _$$LoadRoomsEventCopyWith<$Res> {
  __$$LoadRoomsEventCopyWithImpl(
      _$LoadRoomsEvent _value, $Res Function(_$LoadRoomsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRoomsEvent implements LoadRoomsEvent {
  const _$LoadRoomsEvent();

  @override
  String toString() {
    return 'RoomsEvent.loadCurrRooms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRoomsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrRooms,
  }) {
    return loadCurrRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrRooms,
  }) {
    return loadCurrRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrRooms,
    required TResult orElse(),
  }) {
    if (loadCurrRooms != null) {
      return loadCurrRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRoomsEvent value) loadCurrRooms,
  }) {
    return loadCurrRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRoomsEvent value)? loadCurrRooms,
  }) {
    return loadCurrRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRoomsEvent value)? loadCurrRooms,
    required TResult orElse(),
  }) {
    if (loadCurrRooms != null) {
      return loadCurrRooms(this);
    }
    return orElse();
  }
}

abstract class LoadRoomsEvent implements RoomsEvent {
  const factory LoadRoomsEvent() = _$LoadRoomsEvent;
}
