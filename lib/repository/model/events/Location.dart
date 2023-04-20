import 'package:json_annotation/json_annotation.dart';

part 'Location.g.dart';

@JsonSerializable()
class Location {
  double lat;
  double lon;

  Location({
    required this.lat,
    required this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
