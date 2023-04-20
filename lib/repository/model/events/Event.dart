import 'package:go_party/repository/model/events/Performer.dart';
import 'package:go_party/repository/model/events/Venue.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Event.g.dart';

@JsonSerializable()
class Event {
  String type;
  int id;
  String datetime_utc;
  String title;
  Venue venue;
  String url;
  List<Performer> performers;

  Event({
    required this.type,
    required this.id,
    required this.datetime_utc,
    required this.venue,
    required this.title,
    required this.url,
    required this.performers,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}
