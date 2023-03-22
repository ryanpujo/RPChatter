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
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
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
abstract class _$$NoConnectionCopyWith<T, $Res> {
  factory _$$NoConnectionCopyWith(
          _$NoConnection<T> value, $Res Function(_$NoConnection<T>) then) =
      __$$NoConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoConnectionCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$NoConnection<T>>
    implements _$$NoConnectionCopyWith<T, $Res> {
  __$$NoConnectionCopyWithImpl(
      _$NoConnection<T> _value, $Res Function(_$NoConnection<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConnection<T> extends NoConnection<T> {
  const _$NoConnection() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
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
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnection<T> extends RemoteResponse<T> {
  const factory NoConnection() = _$NoConnection<T>;
  const NoConnection._() : super._();
}

/// @nodoc
abstract class _$$WithDataCopyWith<T, $Res> {
  factory _$$WithDataCopyWith(
          _$WithData<T> value, $Res Function(_$WithData<T>) then) =
      __$$WithDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$WithDataCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$WithData<T>>
    implements _$$WithDataCopyWith<T, $Res> {
  __$$WithDataCopyWithImpl(
      _$WithData<T> _value, $Res Function(_$WithData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$WithData<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$WithData<T> extends WithData<T> {
  const _$WithData(this.data) : super._();

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
            other is _$WithData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithDataCopyWith<T, _$WithData<T>> get copyWith =>
      __$$WithDataCopyWithImpl<T, _$WithData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) {
    return withData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) {
    return withData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
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
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class WithData<T> extends RemoteResponse<T> {
  const factory WithData(final T data) = _$WithData<T>;
  const WithData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$WithDataCopyWith<T, _$WithData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithoutDataCopyWith<T, $Res> {
  factory _$$WithoutDataCopyWith(
          _$WithoutData<T> value, $Res Function(_$WithoutData<T>) then) =
      __$$WithoutDataCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$WithoutDataCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$WithoutData<T>>
    implements _$$WithoutDataCopyWith<T, $Res> {
  __$$WithoutDataCopyWithImpl(
      _$WithoutData<T> _value, $Res Function(_$WithoutData<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WithoutData<T> extends WithoutData<T> {
  const _$WithoutData() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.withoutData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WithoutData<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) {
    return withoutData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) {
    return withoutData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
    required TResult orElse(),
  }) {
    if (withoutData != null) {
      return withoutData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return withoutData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return withoutData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (withoutData != null) {
      return withoutData(this);
    }
    return orElse();
  }
}

abstract class WithoutData<T> extends RemoteResponse<T> {
  const factory WithoutData() = _$WithoutData<T>;
  const WithoutData._() : super._();
}

/// @nodoc
abstract class _$$NoDataFoundCopyWith<T, $Res> {
  factory _$$NoDataFoundCopyWith(
          _$NoDataFound<T> value, $Res Function(_$NoDataFound<T>) then) =
      __$$NoDataFoundCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoDataFoundCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$NoDataFound<T>>
    implements _$$NoDataFoundCopyWith<T, $Res> {
  __$$NoDataFoundCopyWithImpl(
      _$NoDataFound<T> _value, $Res Function(_$NoDataFound<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoDataFound<T> extends NoDataFound<T> {
  const _$NoDataFound() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.noDataFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataFound<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) {
    return noDataFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) {
    return noDataFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return noDataFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return noDataFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound(this);
    }
    return orElse();
  }
}

abstract class NoDataFound<T> extends RemoteResponse<T> {
  const factory NoDataFound() = _$NoDataFound<T>;
  const NoDataFound._() : super._();
}

/// @nodoc
abstract class _$$BadRequestCopyWith<T, $Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest<T> value, $Res Function(_$BadRequest<T>) then) =
      __$$BadRequestCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BadRequestCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$BadRequest<T>>
    implements _$$BadRequestCopyWith<T, $Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest<T> _value, $Res Function(_$BadRequest<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadRequest<T> extends BadRequest<T> {
  const _$BadRequest() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequest<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
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
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest<T> extends RemoteResponse<T> {
  const factory BadRequest() = _$BadRequest<T>;
  const BadRequest._() : super._();
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
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) {
    return userAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) {
    return userAlreadyExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
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
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return userAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return userAlreadyExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
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

/// @nodoc
abstract class _$$_InternalErrorCopyWith<T, $Res> {
  factory _$$_InternalErrorCopyWith(
          _$_InternalError<T> value, $Res Function(_$_InternalError<T>) then) =
      __$$_InternalErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int code});
}

/// @nodoc
class __$$_InternalErrorCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res, _$_InternalError<T>>
    implements _$$_InternalErrorCopyWith<T, $Res> {
  __$$_InternalErrorCopyWithImpl(
      _$_InternalError<T> _value, $Res Function(_$_InternalError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_InternalError<T>(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InternalError<T> extends _InternalError<T> {
  const _$_InternalError(this.code) : super._();

  @override
  final int code;

  @override
  String toString() {
    return 'RemoteResponse<$T>.internalError(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternalError<T> &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternalErrorCopyWith<T, _$_InternalError<T>> get copyWith =>
      __$$_InternalErrorCopyWithImpl<T, _$_InternalError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function(T data) withData,
    required TResult Function() withoutData,
    required TResult Function() noDataFound,
    required TResult Function() badRequest,
    required TResult Function() userAlreadyExist,
    required TResult Function(int code) internalError,
  }) {
    return internalError(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noConnection,
    TResult? Function(T data)? withData,
    TResult? Function()? withoutData,
    TResult? Function()? noDataFound,
    TResult? Function()? badRequest,
    TResult? Function()? userAlreadyExist,
    TResult? Function(int code)? internalError,
  }) {
    return internalError?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function(T data)? withData,
    TResult Function()? withoutData,
    TResult Function()? noDataFound,
    TResult Function()? badRequest,
    TResult Function()? userAlreadyExist,
    TResult Function(int code)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnection<T> value) noConnection,
    required TResult Function(WithData<T> value) withData,
    required TResult Function(WithoutData<T> value) withoutData,
    required TResult Function(NoDataFound<T> value) noDataFound,
    required TResult Function(BadRequest<T> value) badRequest,
    required TResult Function(_UserAlreadyExist<T> value) userAlreadyExist,
    required TResult Function(_InternalError<T> value) internalError,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoConnection<T> value)? noConnection,
    TResult? Function(WithData<T> value)? withData,
    TResult? Function(WithoutData<T> value)? withoutData,
    TResult? Function(NoDataFound<T> value)? noDataFound,
    TResult? Function(BadRequest<T> value)? badRequest,
    TResult? Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult? Function(_InternalError<T> value)? internalError,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnection<T> value)? noConnection,
    TResult Function(WithData<T> value)? withData,
    TResult Function(WithoutData<T> value)? withoutData,
    TResult Function(NoDataFound<T> value)? noDataFound,
    TResult Function(BadRequest<T> value)? badRequest,
    TResult Function(_UserAlreadyExist<T> value)? userAlreadyExist,
    TResult Function(_InternalError<T> value)? internalError,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class _InternalError<T> extends RemoteResponse<T> {
  const factory _InternalError(final int code) = _$_InternalError<T>;
  const _InternalError._() : super._();

  int get code;
  @JsonKey(ignore: true)
  _$$_InternalErrorCopyWith<T, _$_InternalError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
