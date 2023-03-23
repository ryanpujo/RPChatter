// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_status_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionStatusEvent {
  Map<ConnectivityResult, bool> get connectivity =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<ConnectivityResult, bool> connectivity)
        checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<ConnectivityResult, bool> connectivity)?
        checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<ConnectivityResult, bool> connectivity)?
        checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckConnection value)? checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionStatusEventCopyWith<ConnectionStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStatusEventCopyWith<$Res> {
  factory $ConnectionStatusEventCopyWith(ConnectionStatusEvent value,
          $Res Function(ConnectionStatusEvent) then) =
      _$ConnectionStatusEventCopyWithImpl<$Res, ConnectionStatusEvent>;
  @useResult
  $Res call({Map<ConnectivityResult, bool> connectivity});
}

/// @nodoc
class _$ConnectionStatusEventCopyWithImpl<$Res,
        $Val extends ConnectionStatusEvent>
    implements $ConnectionStatusEventCopyWith<$Res> {
  _$ConnectionStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectivity = null,
  }) {
    return _then(_value.copyWith(
      connectivity: null == connectivity
          ? _value.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as Map<ConnectivityResult, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckConnectionCopyWith<$Res>
    implements $ConnectionStatusEventCopyWith<$Res> {
  factory _$$_CheckConnectionCopyWith(
          _$_CheckConnection value, $Res Function(_$_CheckConnection) then) =
      __$$_CheckConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<ConnectivityResult, bool> connectivity});
}

/// @nodoc
class __$$_CheckConnectionCopyWithImpl<$Res>
    extends _$ConnectionStatusEventCopyWithImpl<$Res, _$_CheckConnection>
    implements _$$_CheckConnectionCopyWith<$Res> {
  __$$_CheckConnectionCopyWithImpl(
      _$_CheckConnection _value, $Res Function(_$_CheckConnection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectivity = null,
  }) {
    return _then(_$_CheckConnection(
      null == connectivity
          ? _value._connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as Map<ConnectivityResult, bool>,
    ));
  }
}

/// @nodoc

class _$_CheckConnection extends _CheckConnection {
  const _$_CheckConnection(final Map<ConnectivityResult, bool> connectivity)
      : _connectivity = connectivity,
        super._();

  final Map<ConnectivityResult, bool> _connectivity;
  @override
  Map<ConnectivityResult, bool> get connectivity {
    if (_connectivity is EqualUnmodifiableMapView) return _connectivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_connectivity);
  }

  @override
  String toString() {
    return 'ConnectionStatusEvent.checkConnection(connectivity: $connectivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckConnection &&
            const DeepCollectionEquality()
                .equals(other._connectivity, _connectivity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_connectivity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckConnectionCopyWith<_$_CheckConnection> get copyWith =>
      __$$_CheckConnectionCopyWithImpl<_$_CheckConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<ConnectivityResult, bool> connectivity)
        checkConnection,
  }) {
    return checkConnection(connectivity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<ConnectivityResult, bool> connectivity)?
        checkConnection,
  }) {
    return checkConnection?.call(connectivity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<ConnectivityResult, bool> connectivity)?
        checkConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(connectivity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckConnection value)? checkConnection,
  }) {
    return checkConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckConnection extends ConnectionStatusEvent {
  const factory _CheckConnection(
      final Map<ConnectivityResult, bool> connectivity) = _$_CheckConnection;
  const _CheckConnection._() : super._();

  @override
  Map<ConnectivityResult, bool> get connectivity;
  @override
  @JsonKey(ignore: true)
  _$$_CheckConnectionCopyWith<_$_CheckConnection> get copyWith =>
      throw _privateConstructorUsedError;
}
