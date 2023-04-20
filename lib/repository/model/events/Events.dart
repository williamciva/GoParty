import 'package:go_party/repository/model/events/Venue.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Events.g.dart';

@JsonSerializable()
class Events {
  String type;
  int id;
  String datetime_utc;
  Venue venue;

  Events({
    required this.type,
    required this.id,
    required this.datetime_utc,
    required this.venue,
  });

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
  Map<String, dynamic> toJson() => _$EventsToJson(this);
}
