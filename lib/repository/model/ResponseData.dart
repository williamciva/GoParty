import 'package:json_annotation/json_annotation.dart';
part 'ResponseData.g.dart';

@JsonSerializable()
class ResponseData {
  Map<String, dynamic> meta;
  List<dynamic> events;

  ResponseData({required this.meta, required this.events});

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
