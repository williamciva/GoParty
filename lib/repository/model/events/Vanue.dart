import 'dart:ffi';

import 'package:go_party/repository/model/events/Location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Vanue.g.dart';

@JsonSerializable()
class Vanue {
  String state;
  String name;
  String postal_code;
  String name_v2;
  List<String> links;
  String timezone;
  String url;
  Float score;
  Location location;
  String address;
  String country;
  Bool has_upcoming_events;
  Int num_upcoming_events;
  String city;
  String slug;
  String extended_address;
  Int id;
  Int popularity;
  Bool access_method;
  Int metro_code;
  Int capacity;
  String display_location;

  Vanue({
    required this.state,
    required this.name,
    required this.postal_code,
    required this.name_v2,
    required this.links,
    required this.timezone,
    required this.url,
    required this.score,
    required this.location,
    required this.address,
    required this.country,
    required this.has_upcoming_events,
    required this.num_upcoming_events,
    required this.city,
    required this.slug,
    required this.extended_address,
    required this.id,
    required this.popularity,
    required this.access_method,
    required this.metro_code,
    required this.capacity,
    required this.display_location,
  });

  factory Vanue.fromJson(Map<String, dynamic> json) => _$VanueFromJson(json);
  Map<String, dynamic> toJson() => _$VanueToJson(this);
}
