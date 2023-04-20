import 'package:go_party/repository/model/events/Venue.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Performer.g.dart';

@JsonSerializable()
class Performer {
  String type;
  int id;
  String image;
  Map<String, String> images;
  String name;
  String short_name;
  String slug;
  String url;

  Performer({
    required this.type,
    required this.id,
    required this.image,
    required this.images,
    required this.name,
    required this.short_name,
    required this.slug,
    required this.url,
  });

  factory Performer.fromJson(Map<String, dynamic> json) =>
      _$PerformerFromJson(json);
  Map<String, dynamic> toJson() => _$PerformerToJson(this);
}
