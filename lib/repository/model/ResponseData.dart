import 'package:go_party/repository/model/events/Event.dart';
import 'package:go_party/repository/model/events/Meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ResponseData.g.dart';

@JsonSerializable()
class ResponseData {
  Meta meta;
  List<Event> events;

  ResponseData({required this.meta, required this.events});

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
