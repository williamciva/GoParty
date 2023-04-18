// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Vanue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vanue _$VanueFromJson(Map<String, dynamic> json) => Vanue(
      state: json['state'] as String,
      name: json['name'] as String,
      postal_code: json['postal_code'] as String,
      name_v2: json['name_v2'] as String,
      links: json['links'] as List<String>,
      timezone: json['timezone'] as String,
      url: json['url'] as String,
      score: json['score'] as Float,
      location: json['location'] as Location,
      address: json['address'] as String,
      country: json['country'] as String,
      has_upcoming_events: json['has_upcoming_events'] as Bool,
      num_upcoming_events: json['num_upcoming_events'] as Int,
      city: json['city'] as String,
      slug: json['slug'] as String,
      extended_address: json['extended_address'] as String,
      id: json['id'] as Int,
      popularity: json['popularity'] as Int,
      access_method: json['access_method'] as Bool,
      metro_code: json['metro_code'] as Int,
      capacity: json['capacity'] as Int,
      display_location: json['display_location'] as String,
    );

Map<String, dynamic> _$VanueToJson(Vanue instance) => <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'postal_code': instance.postal_code,
      'name_v2': instance.name_v2,
      'links': instance.links,
      'timezone': instance.timezone,
      'url': instance.url,
      'score': instance.score.toString(),
      'location': instance.location,
      'address': instance.address,
      'country': instance.country,
      'num_upcoming_events': instance.has_upcoming_events,
      'num_upcoming_events': instance.num_upcoming_events,
      'city': instance.city,
      'slug': instance.slug,
      'extended_address': instance.extended_address,
      'id': instance.id,
      'popularity': instance.popularity,
      'access_method': instance.access_method,
      'metro_code': instance.metro_code,
      'capacity': instance.capacity,
      'display_location': instance.display_location,
    };
