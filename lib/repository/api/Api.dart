import 'package:dio/dio.dart';
import 'package:go_party/repository/model/ResponseData.dart';
import 'package:retrofit/retrofit.dart';
import 'Apis.dart';

part 'Api.g.dart';

@RestApi(baseUrl: "https://api.seatgeek.com/2/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.events)
  Future<ResponseData> getEvents();
}
