// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      type: json['type'] as String,
      id: json['id'] as int,
      datetime_utc: json['datetime_utc'] as String,
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>),
      title: json['title'] as String,
      url: json['url'] as String,
      performers: (json['performers'] as List<dynamic>)
          .map((e) => Performer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'datetime_utc': instance.datetime_utc,
      'title': instance.title,
      'venue': instance.venue,
      'url': instance.url,
      'performers': instance.performers,
    };
