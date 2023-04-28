// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
      state: json['state'],
      name: json['name'] as String,
      postal_code: json['postal_code'] as String,
      name_v2: json['name_v2'] as String,
      links: (json['links'] as List<dynamic>).map((e) => e as String).toList(),
      timezone: json['timezone'] as String,
      url: json['url'] as String,
      score: (json['score'] as num).toDouble(),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String,
      country: json['country'] as String,
      has_upcoming_events: json['has_upcoming_events'] as bool,
      num_upcoming_events: json['num_upcoming_events'] as int,
      city: json['city'] as String,
      slug: json['slug'] as String,
      extended_address: json['extended_address'] as String,
      id: json['id'] as int,
      popularity: json['popularity'] as int,
      access_method: json['access_method'],
      metro_code: json['metro_code'] as int,
      capacity: json['capacity'] as int,
      display_location: json['display_location'] as String,
    );

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'state': instance.state,
      'name': instance.name,
      'postal_code': instance.postal_code,
      'name_v2': instance.name_v2,
      'links': instance.links,
      'timezone': instance.timezone,
      'url': instance.url,
      'score': instance.score,
      'location': instance.location,
      'address': instance.address,
      'country': instance.country,
      'has_upcoming_events': instance.has_upcoming_events,
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
