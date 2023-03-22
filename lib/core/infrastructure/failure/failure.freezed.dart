// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode) serverFailure,
    required TResult Function(String message) clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode)? serverFailure,
    TResult? Function(String message)? clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode)? serverFailure,
    TResult Function(String message)? clientFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({int errorCode});
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ServerFailure>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
  }) {
    return _then(_$_ServerFailure(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ServerFailure extends _ServerFailure {
  const _$_ServerFailure(this.errorCode) : super._();

  @override
  final int errorCode;

  @override
  String toString() {
    return 'Failure.serverFailure(errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      __$$_ServerFailureCopyWithImpl<_$_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode) serverFailure,
    required TResult Function(String message) clientFailure,
  }) {
    return serverFailure(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode)? serverFailure,
    TResult? Function(String message)? clientFailure,
  }) {
    return serverFailure?.call(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode)? serverFailure,
    TResult Function(String message)? clientFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure extends Failure {
  const factory _ServerFailure(final int errorCode) = _$_ServerFailure;
  const _ServerFailure._() : super._();

  int get errorCode;
  @JsonKey(ignore: true)
  _$$_ServerFailureCopyWith<_$_ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClientFailureCopyWith<$Res> {
  factory _$$_ClientFailureCopyWith(
          _$_ClientFailure value, $Res Function(_$_ClientFailure) then) =
      __$$_ClientFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ClientFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ClientFailure>
    implements _$$_ClientFailureCopyWith<$Res> {
  __$$_ClientFailureCopyWithImpl(
      _$_ClientFailure _value, $Res Function(_$_ClientFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ClientFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClientFailure extends _ClientFailure {
  const _$_ClientFailure(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.clientFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFailureCopyWith<_$_ClientFailure> get copyWith =>
      __$$_ClientFailureCopyWithImpl<_$_ClientFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int errorCode) serverFailure,
    required TResult Function(String message) clientFailure,
  }) {
    return clientFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int errorCode)? serverFailure,
    TResult? Function(String message)? clientFailure,
  }) {
    return clientFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int errorCode)? serverFailure,
    TResult Function(String message)? clientFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ClientFailure value) clientFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ClientFailure value)? clientFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ClientFailure value)? clientFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure extends Failure {
  const factory _ClientFailure(final String message) = _$_ClientFailure;
  const _ClientFailure._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ClientFailureCopyWith<_$_ClientFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
