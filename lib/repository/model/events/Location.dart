import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Location {
  Float lat;
  Float lon;

  Location({
    required this.lat,
    required this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json['lat'] as Float,
        lon: json['lon'] as Float,
      );

  Map<String, dynamic> toJson() => {
        'lat': this.lat.toString(),
        'lon': this.lon.toString(),
      };
}
