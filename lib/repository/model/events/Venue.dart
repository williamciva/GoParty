import 'package:go_party/repository/model/events/Location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Venue.g.dart';

@JsonSerializable()
class Venue {
  String state;
  String name;
  String postal_code;
  String name_v2;
  List<String> links;
  String timezone;
  String url;
  double score;
  Location location;
  String address;
  String country;
  bool has_upcoming_events;
  int num_upcoming_events;
  String city;
  String slug;
  String extended_address;
  int id;
  int popularity;
  var access_method;
  int metro_code;
  int capacity;
  String display_location;

  Venue({
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

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
  Map<String, dynamic> toJson() => _$VenueToJson(this);
}
