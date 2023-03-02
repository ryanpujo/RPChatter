// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithData<T> value) withData,
    required TResult Function(_BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithData<T> value)? withData,
    TResult? Function(_BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithData<T> value)? withData,
    TResult Function(_BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteResponseCopyWith<T, $Res> {
  factory $RemoteResponseCopyWith(
          RemoteResponse<T> value, $Res Function(RemoteResponse<T>) then) =
      _$RemoteResponseCopyWithImpl<T, $Res, RemoteResponse<T>>;
}

/// @nodoc
class _$RemoteResponseCopyWithImpl<T, $Res, $Val extends RemoteResponse<T>>
    implements $RemoteResponseCopyWith<T, $Res> {
  _$RemoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<T, $Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection<T> value, $Res Function(_$_NoConnection<T>) then) =
      __$$_NoConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_NoConnection<T>>
    implements _$$_NoConnectionCopyWith<T, $Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection<T> _value, $Res Function(_$_NoConnection<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnection<T> extends _NoConnection<T> {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithData<T> value) withData,
    required TResult Function(_BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithData<T> value)? withData,
    TResult? Function(_BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithData<T> value)? withData,
    TResult Function(_BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection<T> extends RemoteResponse<T> {
  const factory _NoConnection() = _$_NoConnection<T>;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$_WithDataCopyWith<T, $Res> {
  factory _$$_WithDataCopyWith(
          _$_WithData<T> value, $Res Function(_$_WithData<T>) then) =
      __$$_WithDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_WithDataCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_WithData<T>>
    implements _$$_WithDataCopyWith<T, $Res> {
  __$$_WithDataCopyWithImpl(
      _$_WithData<T> _value, $Res Function(_$_WithData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_WithData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_WithData<T> extends _WithData<T> {
  const _$_WithData(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'RemoteResponse<$T>.withData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithDataCopyWith<T, _$_WithData<T>> get copyWith =>
      __$$_WithDataCopyWithImpl<T, _$_WithData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
  }) {
    return withData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
  }) {
    return withData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithData<T> value) withData,
    required TResult Function(_BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithData<T> value)? withData,
    TResult? Function(_BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithData<T> value)? withData,
    TResult Function(_BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class _WithData<T> extends RemoteResponse<T> {
  const factory _WithData(final T data) = _$_WithData<T>;
  const _WithData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$_WithDataCopyWith<T, _$_WithData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BadRequestCopyWith<T, $Res> {
  factory _$$_BadRequestCopyWith(
          _$_BadRequest<T> value, $Res Function(_$_BadRequest<T>) then) =
      __$$_BadRequestCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_BadRequestCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_BadRequest<T>>
    implements _$$_BadRequestCopyWith<T, $Res> {
  __$$_BadRequestCopyWithImpl(
      _$_BadRequest<T> _value, $Res Function(_$_BadRequest<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BadRequest<T> extends _BadRequest<T> {
  const _$_BadRequest() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BadRequest<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithData<T> value) withData,
    required TResult Function(_BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithData<T> value)? withData,
    TResult? Function(_BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithData<T> value)? withData,
    TResult Function(_BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest<T> extends RemoteResponse<T> {
  const factory _BadRequest() = _$_BadRequest<T>;
  const _BadRequest._() : super._();
}

/// @nodoc
abstract class _$$_UserAlreadyExistCopyWith<T, $Res> {
  factory _$$_UserAlreadyExistCopyWith(_$_UserAlreadyExist<T> value,
          $Res Function(_$_UserAlreadyExist<T>) then) =
      __$$_UserAlreadyExistCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_UserAlreadyExistCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_UserAlreadyExist<T>>
    implements _$$_UserAlreadyExistCopyWith<T, $Res> {
  __$$_UserAlreadyExistCopyWithImpl(_$_UserAlreadyExist<T> _value,
      $Res Function(_$_UserAlreadyExist<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserAlreadyExist<T> extends _UserAlreadyExist<T> {
  const _$_UserAlreadyExist() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.userAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserAlreadyExist<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
  }) {
    return userAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
  }) {
    return userAlreadyExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (userAlreadyExist != null) {
      return userAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_WithData<T> value) withData,
    required TResult Function(_BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
  }) {
    return userAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoConnection<T> value)? noConnection,
    TResult? Function(_WithData<T> value)? withData,
    TResult? Function(_BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
  }) {
    return userAlreadyExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_WithData<T> value)? withData,
    TResult Function(_BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    required TResult orElse(),
  }) {
    if (userAlreadyExist != null) {
      return userAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class _UserAlreadyExist<T> extends RemoteResponse<T> {
  const factory _UserAlreadyExist() = _$_UserAlreadyExist<T>;
  const _UserAlreadyExist._() : super._();
}
