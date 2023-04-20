// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Performer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Performer _$PerformerFromJson(Map<String, dynamic> json) => Performer(
      type: json['type'] as String,
      id: json['id'] as int,
      image: json['image'] as String,
      images: Map<String, String>.from(json['images'] as Map),
      name: json['name'] as String,
      short_name: json['short_name'] as String,
      slug: json['slug'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PerformerToJson(Performer instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'image': instance.image,
      'images': instance.images,
      'name': instance.name,
      'short_name': instance.short_name,
      'slug': instance.slug,
      'url': instance.url,
    };
