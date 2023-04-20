// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      geolocation: json['geolocation'],
      page: json['page'] as int,
      per_page: json['per_page'] as int,
      took: json['took'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'geolocation': instance.geolocation,
      'page': instance.page,
      'per_page': instance.per_page,
      'took': instance.took,
      'total': instance.total,
    };
