import 'package:go_party/repository/model/events/Vanue.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Events.g.dart';

@JsonSerializable()
class Events {
  String type;
  BigInt id;
  String datetime_utc;
  Vanue vanue;

  Events({
    required this.type,
    required this.id,
    required this.datetime_utc,
    required this.vanue,
  });

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
  Map<String, dynamic> toJson() => _$EventsToJson(this);
}
