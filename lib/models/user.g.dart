// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomUser _$UserFromJson(Map<String, dynamic> json) {
  return CustomUser(
    gender: json['gender'] as String ?? '',
    email: json['email'] as String ?? '',
    name: json['name'] as String ?? '',
  );
}

Map<String, dynamic> _$UserToJson(CustomUser instance) => <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'gender': instance.gender,
    };
