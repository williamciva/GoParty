// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Events _$EventsFromJson(Map<String, dynamic> json) => Events(
      type: json['type'] as String,
      id: BigInt.parse(json['id'] as String),
      datetime_utc: json['datetime_utc'] as String,
      vanue: Vanue.fromJson(json['vanue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventsToJson(Events instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id.toString(),
      'datetime_utc': instance.datetime_utc,
      'vanue': instance.vanue,
    };
