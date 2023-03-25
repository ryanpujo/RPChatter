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
    required TResult Function() register,
    required TResult Function(String username) getByUsername,
    required TResult Function() getUsers,
    required TResult Function(User user) update,
    required TResult Function(String username) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String username)? getByUsername,
    TResult? Function()? getUsers,
    TResult? Function(User user)? update,
    TResult? Function(String username)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String username)? getByUsername,
    TResult Function()? getUsers,
    TResult Function(User user)? update,
    TResult Function(String username)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetByUsername value) getByUsername,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetByUsername value)? getByUsername,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetByUsername value)? getByUsername,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
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
abstract class _$$_RegisterEventCopyWith<$Res> {
  factory _$$_RegisterEventCopyWith(
          _$_RegisterEvent value, $Res Function(_$_RegisterEvent) then) =
      __$$_RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterEventCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$_RegisterEvent>
    implements _$$_RegisterEventCopyWith<$Res> {
  __$$_RegisterEventCopyWithImpl(
      _$_RegisterEvent _value, $Res Function(_$_RegisterEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterEvent implements _RegisterEvent {
  const _$_RegisterEvent();

  @override
  String toString() {
    return 'UserBlocEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String username) getByUsername,
    required TResult Function() getUsers,
    required TResult Function(User user) update,
    required TResult Function(String username) delete,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String username)? getByUsername,
    TResult? Function()? getUsers,
    TResult? Function(User user)? update,
    TResult? Function(String username)? delete,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String username)? getByUsername,
    TResult Function()? getUsers,
    TResult Function(User user)? update,
    TResult Function(String username)? delete,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetByUsername value) getByUsername,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetByUsername value)? getByUsername,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetByUsername value)? getByUsername,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _RegisterEvent implements UserBlocEvent {
  const factory _RegisterEvent() = _$_RegisterEvent;
}

/// @nodoc
abstract class _$$_GetByUsernameCopyWith<$Res> {
  factory _$$_GetByUsernameCopyWith(
          _$_GetByUsername value, $Res Function(_$_GetByUsername) then) =
      __$$_GetByUsernameCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$_GetByUsernameCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$_GetByUsername>
    implements _$$_GetByUsernameCopyWith<$Res> {
  __$$_GetByUsernameCopyWithImpl(
      _$_GetByUsername _value, $Res Function(_$_GetByUsername) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$_GetByUsername(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetByUsername implements _GetByUsername {
  const _$_GetByUsername(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UserBlocEvent.getByUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetByUsername &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetByUsernameCopyWith<_$_GetByUsername> get copyWith =>
      __$$_GetByUsernameCopyWithImpl<_$_GetByUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String username) getByUsername,
    required TResult Function() getUsers,
    required TResult Function(User user) update,
    required TResult Function(String username) delete,
  }) {
    return getByUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String username)? getByUsername,
    TResult? Function()? getUsers,
    TResult? Function(User user)? update,
    TResult? Function(String username)? delete,
  }) {
    return getByUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String username)? getByUsername,
    TResult Function()? getUsers,
    TResult Function(User user)? update,
    TResult Function(String username)? delete,
    required TResult orElse(),
  }) {
    if (getByUsername != null) {
      return getByUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetByUsername value) getByUsername,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return getByUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetByUsername value)? getByUsername,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return getByUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetByUsername value)? getByUsername,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getByUsername != null) {
      return getByUsername(this);
    }
    return orElse();
  }
}

abstract class _GetByUsername implements UserBlocEvent {
  const factory _GetByUsername(final String username) = _$_GetByUsername;

  String get username;
  @JsonKey(ignore: true)
  _$$_GetByUsernameCopyWith<_$_GetByUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUsersCopyWith<$Res> {
  factory _$$_GetUsersCopyWith(
          _$_GetUsers value, $Res Function(_$_GetUsers) then) =
      __$$_GetUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUsersCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$_GetUsers>
    implements _$$_GetUsersCopyWith<$Res> {
  __$$_GetUsersCopyWithImpl(
      _$_GetUsers _value, $Res Function(_$_GetUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUsers implements _GetUsers {
  const _$_GetUsers();

  @override
  String toString() {
    return 'UserBlocEvent.getUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String username) getByUsername,
    required TResult Function() getUsers,
    required TResult Function(User user) update,
    required TResult Function(String username) delete,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String username)? getByUsername,
    TResult? Function()? getUsers,
    TResult? Function(User user)? update,
    TResult? Function(String username)? delete,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String username)? getByUsername,
    TResult Function()? getUsers,
    TResult Function(User user)? update,
    TResult Function(String username)? delete,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetByUsername value) getByUsername,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetByUsername value)? getByUsername,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetByUsername value)? getByUsername,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UserBlocEvent {
  const factory _GetUsers() = _$_GetUsers;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Update(
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

class _$_Update implements _Update {
  const _$_Update(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserBlocEvent.update(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String username) getByUsername,
    required TResult Function() getUsers,
    required TResult Function(User user) update,
    required TResult Function(String username) delete,
  }) {
    return update(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String username)? getByUsername,
    TResult? Function()? getUsers,
    TResult? Function(User user)? update,
    TResult? Function(String username)? delete,
  }) {
    return update?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String username)? getByUsername,
    TResult Function()? getUsers,
    TResult Function(User user)? update,
    TResult Function(String username)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetByUsername value) getByUsername,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetByUsername value)? getByUsername,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetByUsername value)? getByUsername,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements UserBlocEvent {
  const factory _Update(final User user) = _$_Update;

  User get user;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$_Delete(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UserBlocEvent.delete(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() register,
    required TResult Function(String username) getByUsername,
    required TResult Function() getUsers,
    required TResult Function(User user) update,
    required TResult Function(String username) delete,
  }) {
    return delete(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? register,
    TResult? Function(String username)? getByUsername,
    TResult? Function()? getUsers,
    TResult? Function(User user)? update,
    TResult? Function(String username)? delete,
  }) {
    return delete?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? register,
    TResult Function(String username)? getByUsername,
    TResult Function()? getUsers,
    TResult Function(User user)? update,
    TResult Function(String username)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterEvent value) register,
    required TResult Function(_GetByUsername value) getByUsername,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterEvent value)? register,
    TResult? Function(_GetByUsername value)? getByUsername,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterEvent value)? register,
    TResult Function(_GetByUsername value)? getByUsername,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements UserBlocEvent {
  const factory _Delete(final String username) = _$_Delete;

  String get username;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}
