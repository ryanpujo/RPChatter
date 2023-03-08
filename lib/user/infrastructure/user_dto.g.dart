// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      fName: json['Fname'] as String,
      lName: json['Lname'] as String,
      username: json['Username'] as String,
      email: json['Email'] as String,
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'Fname': instance.fName,
      'Lname': instance.lName,
      'Username': instance.username,
      'Email': instance.email,
      'password': instance.password,
    };
