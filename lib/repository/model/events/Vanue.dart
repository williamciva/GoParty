import 'dart:ffi';

import 'package:go_party/repository/model/events/Location.dart';
import 'package:json_annotation/json_annotation.dart';

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

  factory Vanue.fromJson(Map<String, dynamic> json) => Vanue(
        state: json['state'] as String,
        name: json['name'] as String,
        postal_code: json['postal_code'] as String,
        name_v2: json['name_v2'] as String,
        links: json['links'] as List<String>,
        timezone: json['timezone'] as String,
        url: json['url'] as String,
        score: json['score'] as Float,
        location: json['location'] as Location,
        address: json['address'] as String,
        country: json['country'] as String,
        has_upcoming_events: json['has_upcoming_events'] as Bool,
        num_upcoming_events: json['num_upcoming_events'] as Int,
        city: json['city'] as String,
        slug: json['slug'] as String,
        extended_address: json['extended_address'] as String,
        id: json['id'] as Int,
        popularity: json['popularity'] as Int,
        access_method: json['access_method'] as Bool,
        metro_code: json['metro_code'] as Int,
        capacity: json['capacity'] as Int,
        display_location: json['display_location'] as String,
      );

  Map<String, dynamic> toJson() => {
        'state': this.state,
        'name': this.name,
        'postal_code': this.postal_code,
        'name_v2': this.name_v2,
        'links': this.links,
        'timezone': this.timezone,
        'url': this.url,
        'score': this.score.toString(),
        'location': this.location,
        'address': this.address,
        'country': this.country,
        'num_upcoming_events': this.has_upcoming_events,
        'num_upcoming_events': this.num_upcoming_events,
        'city': this.city,
        'slug': this.slug,
        'extended_address': this.extended_address,
        'id': this.id,
        'popularity': this.popularity,
        'access_method': this.access_method,
        'metro_code': this.metro_code,
        'capacity': this.capacity,
        'display_location': this.display_location,
      };
}
