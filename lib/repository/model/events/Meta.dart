import 'package:go_party/repository/model/events/Events.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Meta.g.dart';

@JsonSerializable()
class Meta {
  var geolocation;
  int page;
  int per_page;
  int took;
  int total;

  Meta({
    required this.geolocation,
    required this.page,
    required this.per_page,
    required this.took,
    required this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
