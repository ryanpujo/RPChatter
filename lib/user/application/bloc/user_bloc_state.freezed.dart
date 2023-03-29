// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserBlocState {
  User? get user => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, List<User> users) initialState,
    required TResult Function(User? user, List<User> users) loadingState,
    required TResult Function(
            User? user, List<User> users, auth.UserCredential? cred)
        loadedState,
    required TResult Function(User? user, List<User> users, Failure failure)
        failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, List<User> users)? initialState,
    TResult? Function(User? user, List<User> users)? loadingState,
    TResult? Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult? Function(User? user, List<User> users, Failure failure)?
        failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, List<User> users)? initialState,
    TResult Function(User? user, List<User> users)? loadingState,
    TResult Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult Function(User? user, List<User> users, Failure failure)?
        failureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(FailureState value) failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(FailureState value)? failureState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBlocStateCopyWith<UserBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlocStateCopyWith<$Res> {
  factory $UserBlocStateCopyWith(
          UserBlocState value, $Res Function(UserBlocState) then) =
      _$UserBlocStateCopyWithImpl<$Res, UserBlocState>;
  @useResult
  $Res call({User? user, List<User> users});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserBlocStateCopyWithImpl<$Res, $Val extends UserBlocState>
    implements $UserBlocStateCopyWith<$Res> {
  _$UserBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, List<User> users});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$UserBlocStateCopyWithImpl<$Res, _$InitialState>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? users = null,
  }) {
    return _then(_$InitialState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState({this.user, required final List<User> users})
      : _users = users;

  @override
  final User? user;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserBlocState.initialState(user: $user, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialStateCopyWith<_$InitialState> get copyWith =>
      __$$InitialStateCopyWithImpl<_$InitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, List<User> users) initialState,
    required TResult Function(User? user, List<User> users) loadingState,
    required TResult Function(
            User? user, List<User> users, auth.UserCredential? cred)
        loadedState,
    required TResult Function(User? user, List<User> users, Failure failure)
        failureState,
  }) {
    return initialState(user, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, List<User> users)? initialState,
    TResult? Function(User? user, List<User> users)? loadingState,
    TResult? Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult? Function(User? user, List<User> users, Failure failure)?
        failureState,
  }) {
    return initialState?.call(user, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, List<User> users)? initialState,
    TResult Function(User? user, List<User> users)? loadingState,
    TResult Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult Function(User? user, List<User> users, Failure failure)?
        failureState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(user, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(FailureState value) failureState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements UserBlocState {
  const factory InitialState(
      {final User? user, required final List<User> users}) = _$InitialState;

  @override
  User? get user;
  @override
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$InitialStateCopyWith<_$InitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, List<User> users});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$UserBlocStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? users = null,
  }) {
    return _then(_$LoadingState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState({this.user, required final List<User> users})
      : _users = users;

  @override
  final User? user;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserBlocState.loadingState(user: $user, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateCopyWith<_$LoadingState> get copyWith =>
      __$$LoadingStateCopyWithImpl<_$LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, List<User> users) initialState,
    required TResult Function(User? user, List<User> users) loadingState,
    required TResult Function(
            User? user, List<User> users, auth.UserCredential? cred)
        loadedState,
    required TResult Function(User? user, List<User> users, Failure failure)
        failureState,
  }) {
    return loadingState(user, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, List<User> users)? initialState,
    TResult? Function(User? user, List<User> users)? loadingState,
    TResult? Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult? Function(User? user, List<User> users, Failure failure)?
        failureState,
  }) {
    return loadingState?.call(user, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, List<User> users)? initialState,
    TResult Function(User? user, List<User> users)? loadingState,
    TResult Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult Function(User? user, List<User> users, Failure failure)?
        failureState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(user, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(FailureState value) failureState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements UserBlocState {
  const factory LoadingState(
      {final User? user, required final List<User> users}) = _$LoadingState;

  @override
  User? get user;
  @override
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateCopyWith<_$LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateCopyWith<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  factory _$$LoadedStateCopyWith(
          _$LoadedState value, $Res Function(_$LoadedState) then) =
      __$$LoadedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, List<User> users, auth.UserCredential? cred});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoadedStateCopyWithImpl<$Res>
    extends _$UserBlocStateCopyWithImpl<$Res, _$LoadedState>
    implements _$$LoadedStateCopyWith<$Res> {
  __$$LoadedStateCopyWithImpl(
      _$LoadedState _value, $Res Function(_$LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? users = null,
    Object? cred = freezed,
  }) {
    return _then(_$LoadedState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      cred: freezed == cred
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as auth.UserCredential?,
    ));
  }
}

/// @nodoc

class _$LoadedState implements LoadedState {
  const _$LoadedState({this.user, required final List<User> users, this.cred})
      : _users = users;

  @override
  final User? user;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final auth.UserCredential? cred;

  @override
  String toString() {
    return 'UserBlocState.loadedState(user: $user, users: $users, cred: $cred)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.cred, cred) || other.cred == cred));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_users), cred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateCopyWith<_$LoadedState> get copyWith =>
      __$$LoadedStateCopyWithImpl<_$LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, List<User> users) initialState,
    required TResult Function(User? user, List<User> users) loadingState,
    required TResult Function(
            User? user, List<User> users, auth.UserCredential? cred)
        loadedState,
    required TResult Function(User? user, List<User> users, Failure failure)
        failureState,
  }) {
    return loadedState(user, users, cred);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, List<User> users)? initialState,
    TResult? Function(User? user, List<User> users)? loadingState,
    TResult? Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult? Function(User? user, List<User> users, Failure failure)?
        failureState,
  }) {
    return loadedState?.call(user, users, cred);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, List<User> users)? initialState,
    TResult Function(User? user, List<User> users)? loadingState,
    TResult Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult Function(User? user, List<User> users, Failure failure)?
        failureState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(user, users, cred);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(FailureState value) failureState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements UserBlocState {
  const factory LoadedState(
      {final User? user,
      required final List<User> users,
      final auth.UserCredential? cred}) = _$LoadedState;

  @override
  User? get user;
  @override
  List<User> get users;
  auth.UserCredential? get cred;
  @override
  @JsonKey(ignore: true)
  _$$LoadedStateCopyWith<_$LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateCopyWith<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  factory _$$FailureStateCopyWith(
          _$FailureState value, $Res Function(_$FailureState) then) =
      __$$FailureStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, List<User> users, Failure failure});

  @override
  $UserCopyWith<$Res>? get user;
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureStateCopyWithImpl<$Res>
    extends _$UserBlocStateCopyWithImpl<$Res, _$FailureState>
    implements _$$FailureStateCopyWith<$Res> {
  __$$FailureStateCopyWithImpl(
      _$FailureState _value, $Res Function(_$FailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? users = null,
    Object? failure = null,
  }) {
    return _then(_$FailureState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureState implements FailureState {
  const _$FailureState(
      {this.user, required final List<User> users, required this.failure})
      : _users = users;

  @override
  final User? user;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserBlocState.failureState(user: $user, users: $users, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_users), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      __$$FailureStateCopyWithImpl<_$FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, List<User> users) initialState,
    required TResult Function(User? user, List<User> users) loadingState,
    required TResult Function(
            User? user, List<User> users, auth.UserCredential? cred)
        loadedState,
    required TResult Function(User? user, List<User> users, Failure failure)
        failureState,
  }) {
    return failureState(user, users, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, List<User> users)? initialState,
    TResult? Function(User? user, List<User> users)? loadingState,
    TResult? Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult? Function(User? user, List<User> users, Failure failure)?
        failureState,
  }) {
    return failureState?.call(user, users, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, List<User> users)? initialState,
    TResult Function(User? user, List<User> users)? loadingState,
    TResult Function(User? user, List<User> users, auth.UserCredential? cred)?
        loadedState,
    TResult Function(User? user, List<User> users, Failure failure)?
        failureState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(user, users, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(FailureState value) failureState,
  }) {
    return failureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(LoadedState value)? loadedState,
    TResult? Function(FailureState value)? failureState,
  }) {
    return failureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(FailureState value)? failureState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(this);
    }
    return orElse();
  }
}

abstract class FailureState implements UserBlocState {
  const factory FailureState(
      {final User? user,
      required final List<User> users,
      required final Failure failure}) = _$FailureState;

  @override
  User? get user;
  @override
  List<User> get users;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
