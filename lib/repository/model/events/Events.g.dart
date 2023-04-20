// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Events _$EventsFromJson(Map<String, dynamic> json) => Events(
      type: json['type'] as String,
      id: json['id'] as int,
      datetime_utc: json['datetime_utc'] as String,
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventsToJson(Events instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'datetime_utc': instance.datetime_utc,
      'venue': instance.venue,
    };
