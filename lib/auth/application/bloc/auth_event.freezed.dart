// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) isAuthenticated,
    required TResult Function() signOut,
    required TResult Function() signIn,
    required TResult Function() checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? isAuthenticated,
    TResult? Function()? signOut,
    TResult? Function()? signIn,
    TResult? Function()? checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? isAuthenticated,
    TResult Function()? signOut,
    TResult Function()? signIn,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_isAuthenticated value) isAuthenticated,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckAuthentication value) checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_isAuthenticated value)? isAuthenticated,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckAuthentication value)? checkAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_isAuthenticated value)? isAuthenticated,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_isAuthenticatedCopyWith<$Res> {
  factory _$$_isAuthenticatedCopyWith(
          _$_isAuthenticated value, $Res Function(_$_isAuthenticated) then) =
      __$$_isAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$_isAuthenticatedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_isAuthenticated>
    implements _$$_isAuthenticatedCopyWith<$Res> {
  __$$_isAuthenticatedCopyWithImpl(
      _$_isAuthenticated _value, $Res Function(_$_isAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_isAuthenticated(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_isAuthenticated extends _isAuthenticated {
  const _$_isAuthenticated(this.user) : super._();

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.isAuthenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_isAuthenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_isAuthenticatedCopyWith<_$_isAuthenticated> get copyWith =>
      __$$_isAuthenticatedCopyWithImpl<_$_isAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) isAuthenticated,
    required TResult Function() signOut,
    required TResult Function() signIn,
    required TResult Function() checkAuthentication,
  }) {
    return isAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? isAuthenticated,
    TResult? Function()? signOut,
    TResult? Function()? signIn,
    TResult? Function()? checkAuthentication,
  }) {
    return isAuthenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? isAuthenticated,
    TResult Function()? signOut,
    TResult Function()? signIn,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_isAuthenticated value) isAuthenticated,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckAuthentication value) checkAuthentication,
  }) {
    return isAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_isAuthenticated value)? isAuthenticated,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckAuthentication value)? checkAuthentication,
  }) {
    return isAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_isAuthenticated value)? isAuthenticated,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _isAuthenticated extends AuthEvent {
  const factory _isAuthenticated(final User? user) = _$_isAuthenticated;
  const _isAuthenticated._() : super._();

  User? get user;
  @JsonKey(ignore: true)
  _$$_isAuthenticatedCopyWith<_$_isAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut extends _SignOut {
  const _$_SignOut() : super._();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) isAuthenticated,
    required TResult Function() signOut,
    required TResult Function() signIn,
    required TResult Function() checkAuthentication,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? isAuthenticated,
    TResult? Function()? signOut,
    TResult? Function()? signIn,
    TResult? Function()? checkAuthentication,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? isAuthenticated,
    TResult Function()? signOut,
    TResult Function()? signIn,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_isAuthenticated value) isAuthenticated,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckAuthentication value) checkAuthentication,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_isAuthenticated value)? isAuthenticated,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckAuthentication value)? checkAuthentication,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_isAuthenticated value)? isAuthenticated,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut extends AuthEvent {
  const factory _SignOut() = _$_SignOut;
  const _SignOut._() : super._();
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignIn extends _SignIn {
  const _$_SignIn() : super._();

  @override
  String toString() {
    return 'AuthEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) isAuthenticated,
    required TResult Function() signOut,
    required TResult Function() signIn,
    required TResult Function() checkAuthentication,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? isAuthenticated,
    TResult? Function()? signOut,
    TResult? Function()? signIn,
    TResult? Function()? checkAuthentication,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? isAuthenticated,
    TResult Function()? signOut,
    TResult Function()? signIn,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_isAuthenticated value) isAuthenticated,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckAuthentication value) checkAuthentication,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_isAuthenticated value)? isAuthenticated,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckAuthentication value)? checkAuthentication,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_isAuthenticated value)? isAuthenticated,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn extends AuthEvent {
  const factory _SignIn() = _$_SignIn;
  const _SignIn._() : super._();
}

/// @nodoc
abstract class _$$_CheckAuthenticationCopyWith<$Res> {
  factory _$$_CheckAuthenticationCopyWith(_$_CheckAuthentication value,
          $Res Function(_$_CheckAuthentication) then) =
      __$$_CheckAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthenticationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckAuthentication>
    implements _$$_CheckAuthenticationCopyWith<$Res> {
  __$$_CheckAuthenticationCopyWithImpl(_$_CheckAuthentication _value,
      $Res Function(_$_CheckAuthentication) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckAuthentication extends _CheckAuthentication {
  const _$_CheckAuthentication() : super._();

  @override
  String toString() {
    return 'AuthEvent.checkAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) isAuthenticated,
    required TResult Function() signOut,
    required TResult Function() signIn,
    required TResult Function() checkAuthentication,
  }) {
    return checkAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? isAuthenticated,
    TResult? Function()? signOut,
    TResult? Function()? signIn,
    TResult? Function()? checkAuthentication,
  }) {
    return checkAuthentication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? isAuthenticated,
    TResult Function()? signOut,
    TResult Function()? signIn,
    TResult Function()? checkAuthentication,
    required TResult orElse(),
  }) {
    if (checkAuthentication != null) {
      return checkAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_isAuthenticated value) isAuthenticated,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_CheckAuthentication value) checkAuthentication,
  }) {
    return checkAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_isAuthenticated value)? isAuthenticated,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_CheckAuthentication value)? checkAuthentication,
  }) {
    return checkAuthentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_isAuthenticated value)? isAuthenticated,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_CheckAuthentication value)? checkAuthentication,
    required TResult orElse(),
  }) {
    if (checkAuthentication != null) {
      return checkAuthentication(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthentication extends AuthEvent {
  const factory _CheckAuthentication() = _$_CheckAuthentication;
  const _CheckAuthentication._() : super._();
}
