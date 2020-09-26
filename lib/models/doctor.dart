import 'package:geopoint/geopoint.dart';
import 'package:json_annotation/json_annotation.dart';

part 'doctor.g.dart';

@JsonSerializable(explicitToJson: true)
class Doctor {
  @JsonKey(defaultValue: '')
  final String name;

  @JsonKey(defaultValue: '')
  final String specialization;

  @JsonKey(defaultValue: 0)
  final int contact;

  @JsonKey(defaultValue: '')
  final String clinic;

  // @JsonKey(fromJson: _fromJsonGeoPoint, toJson: _toJsonGeoPoint)
  // GeoPoint location;
  //
  // static GeoPoint _fromJsonGeoPoint(GeoPoint geoPoint) {
  //   return geoPoint;
  // }
  //
  // static GeoPoint _toJsonGeoPoint(GeoPoint geoPoint) {
  //   return geoPoint;
  // }
  Doctor({
    this.name,
    this.specialization,
    this.contact,
    this.clinic,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}
