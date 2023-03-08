// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) register,
    required TResult Function(String username) isUsernameAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? register,
    TResult? Function(String username)? isUsernameAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? register,
    TResult Function(String username)? isUsernameAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEvent value) register,
    required TResult Function(IsUsernameAvailableEvent value)
        isUsernameAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(IsUsernameAvailableEvent value)? isUsernameAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEvent value)? register,
    TResult Function(IsUsernameAvailableEvent value)? isUsernameAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlocEventCopyWith<$Res> {
  factory $UserBlocEventCopyWith(
          UserBlocEvent value, $Res Function(UserBlocEvent) then) =
      _$UserBlocEventCopyWithImpl<$Res, UserBlocEvent>;
}

/// @nodoc
class _$UserBlocEventCopyWithImpl<$Res, $Val extends UserBlocEvent>
    implements $UserBlocEventCopyWith<$Res> {
  _$UserBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterEventCopyWith<$Res> {
  factory _$$RegisterEventCopyWith(
          _$RegisterEvent value, $Res Function(_$RegisterEvent) then) =
      __$$RegisterEventCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterEventCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$RegisterEvent>
    implements _$$RegisterEventCopyWith<$Res> {
  __$$RegisterEventCopyWithImpl(
      _$RegisterEvent _value, $Res Function(_$RegisterEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RegisterEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RegisterEvent implements RegisterEvent {
  const _$RegisterEvent(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserBlocEvent.register(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEventCopyWith<_$RegisterEvent> get copyWith =>
      __$$RegisterEventCopyWithImpl<_$RegisterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) register,
    required TResult Function(String username) isUsernameAvailable,
  }) {
    return register(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? register,
    TResult? Function(String username)? isUsernameAvailable,
  }) {
    return register?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? register,
    TResult Function(String username)? isUsernameAvailable,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEvent value) register,
    required TResult Function(IsUsernameAvailableEvent value)
        isUsernameAvailable,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(IsUsernameAvailableEvent value)? isUsernameAvailable,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEvent value)? register,
    TResult Function(IsUsernameAvailableEvent value)? isUsernameAvailable,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements UserBlocEvent {
  const factory RegisterEvent(final User user) = _$RegisterEvent;

  User get user;
  @JsonKey(ignore: true)
  _$$RegisterEventCopyWith<_$RegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsUsernameAvailableEventCopyWith<$Res> {
  factory _$$IsUsernameAvailableEventCopyWith(_$IsUsernameAvailableEvent value,
          $Res Function(_$IsUsernameAvailableEvent) then) =
      __$$IsUsernameAvailableEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$IsUsernameAvailableEventCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$IsUsernameAvailableEvent>
    implements _$$IsUsernameAvailableEventCopyWith<$Res> {
  __$$IsUsernameAvailableEventCopyWithImpl(_$IsUsernameAvailableEvent _value,
      $Res Function(_$IsUsernameAvailableEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$IsUsernameAvailableEvent(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsUsernameAvailableEvent implements IsUsernameAvailableEvent {
  const _$IsUsernameAvailableEvent(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UserBlocEvent.isUsernameAvailable(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsUsernameAvailableEvent &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsUsernameAvailableEventCopyWith<_$IsUsernameAvailableEvent>
      get copyWith =>
          __$$IsUsernameAvailableEventCopyWithImpl<_$IsUsernameAvailableEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) register,
    required TResult Function(String username) isUsernameAvailable,
  }) {
    return isUsernameAvailable(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? register,
    TResult? Function(String username)? isUsernameAvailable,
  }) {
    return isUsernameAvailable?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? register,
    TResult Function(String username)? isUsernameAvailable,
    required TResult orElse(),
  }) {
    if (isUsernameAvailable != null) {
      return isUsernameAvailable(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEvent value) register,
    required TResult Function(IsUsernameAvailableEvent value)
        isUsernameAvailable,
  }) {
    return isUsernameAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(IsUsernameAvailableEvent value)? isUsernameAvailable,
  }) {
    return isUsernameAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEvent value)? register,
    TResult Function(IsUsernameAvailableEvent value)? isUsernameAvailable,
    required TResult orElse(),
  }) {
    if (isUsernameAvailable != null) {
      return isUsernameAvailable(this);
    }
    return orElse();
  }
}

abstract class IsUsernameAvailableEvent implements UserBlocEvent {
  const factory IsUsernameAvailableEvent(final String username) =
      _$IsUsernameAvailableEvent;

  String get username;
  @JsonKey(ignore: true)
  _$$IsUsernameAvailableEventCopyWith<_$IsUsernameAvailableEvent>
      get copyWith => throw _privateConstructorUsedError;
}
