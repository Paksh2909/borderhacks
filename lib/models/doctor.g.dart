// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return Doctor(
    name: json['name'] as String ?? '',
    specialization: json['specialization'] as String ?? '',
    contact: json['contact'] as int ?? 0,
  );
}

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
      'name': instance.name,
      'specialization': instance.specialization,
      'contact': instance.contact,
    };
