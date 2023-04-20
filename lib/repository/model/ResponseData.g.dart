// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) => ResponseData(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'events': instance.events,
    };
