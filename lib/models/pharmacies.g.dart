// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pharmacies _$PharmaciesFromJson(Map<String, dynamic> json) {
  return Pharmacies(
    name: json['name'] as String ?? '',
    medicines:
        (json['medicines'] as List)?.map((e) => e as String)?.toList() ?? [],
  );
}

Map<String, dynamic> _$PharmaciesToJson(Pharmacies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'medicines': instance.medicines,
    };
