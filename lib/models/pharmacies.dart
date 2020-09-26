import 'package:json_annotation/json_annotation.dart';

part 'pharmacies.g.dart';

@JsonSerializable(explicitToJson: true)
class Pharmacies {
  @JsonKey(defaultValue: '')
  final String name;

  @JsonKey(defaultValue: [])
  final List<String> medicines;

  Pharmacies({this.name, this.medicines});

  factory Pharmacies.fromJson(Map<String, dynamic> json) =>
      _$PharmaciesFromJson(json);

  Map<String, dynamic> toJson() => _$PharmaciesToJson(this);
}
