// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserForm {
  String? get fName => throw _privateConstructorUsedError;
  String? get lName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? fName, String? lName, String? username,
            String? email, String? password)
        form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? fName, String? lName, String? username,
            String? email, String? password)?
        form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? fName, String? lName, String? username,
            String? email, String? password)?
        form,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormUser value) form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormUser value)? form,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormUser value)? form,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormCopyWith<UserForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormCopyWith<$Res> {
  factory $UserFormCopyWith(UserForm value, $Res Function(UserForm) then) =
      _$UserFormCopyWithImpl<$Res, UserForm>;
  @useResult
  $Res call(
      {String? fName,
      String? lName,
      String? username,
      String? email,
      String? password});
}

/// @nodoc
class _$UserFormCopyWithImpl<$Res, $Val extends UserForm>
    implements $UserFormCopyWith<$Res> {
  _$UserFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fName = freezed,
    Object? lName = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      fName: freezed == fName
          ? _value.fName
          : fName // ignore: cast_nullable_to_non_nullable
              as String?,
      lName: freezed == lName
          ? _value.lName
          : lName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormUserCopyWith<$Res> implements $UserFormCopyWith<$Res> {
  factory _$$FormUserCopyWith(
          _$FormUser value, $Res Function(_$FormUser) then) =
      __$$FormUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fName,
      String? lName,
      String? username,
      String? email,
      String? password});
}

/// @nodoc
class __$$FormUserCopyWithImpl<$Res>
    extends _$UserFormCopyWithImpl<$Res, _$FormUser>
    implements _$$FormUserCopyWith<$Res> {
  __$$FormUserCopyWithImpl(_$FormUser _value, $Res Function(_$FormUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fName = freezed,
    Object? lName = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$FormUser(
      fName: freezed == fName
          ? _value.fName
          : fName // ignore: cast_nullable_to_non_nullable
              as String?,
      lName: freezed == lName
          ? _value.lName
          : lName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FormUser extends FormUser {
  const _$FormUser(
      {this.fName, this.lName, this.username, this.email, this.password})
      : super._();

  @override
  final String? fName;
  @override
  final String? lName;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'UserForm.form(fName: $fName, lName: $lName, username: $username, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormUser &&
            (identical(other.fName, fName) || other.fName == fName) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fName, lName, username, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormUserCopyWith<_$FormUser> get copyWith =>
      __$$FormUserCopyWithImpl<_$FormUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? fName, String? lName, String? username,
            String? email, String? password)
        form,
  }) {
    return form(fName, lName, username, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? fName, String? lName, String? username,
            String? email, String? password)?
        form,
  }) {
    return form?.call(fName, lName, username, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? fName, String? lName, String? username,
            String? email, String? password)?
        form,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(fName, lName, username, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormUser value) form,
  }) {
    return form(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormUser value)? form,
  }) {
    return form?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormUser value)? form,
    required TResult orElse(),
  }) {
    if (form != null) {
      return form(this);
    }
    return orElse();
  }
}

abstract class FormUser extends UserForm {
  const factory FormUser(
      {final String? fName,
      final String? lName,
      final String? username,
      final String? email,
      final String? password}) = _$FormUser;
  const FormUser._() : super._();

  @override
  String? get fName;
  @override
  String? get lName;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$FormUserCopyWith<_$FormUser> get copyWith =>
      throw _privateConstructorUsedError;
}
