import 'package:dio/dio.dart';
import 'package:go_party/repository/model/ResponseData.dart';
import 'package:retrofit/retrofit.dart';
import 'Apis.dart';

part 'Api.g.dart';

@RestApi(baseUrl: "https://api.seatgeek.com/2/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.events)
  Future<ResponseData> getEvents({required String client_id});

    @GET(Apis.events)
  Future<ResponseData> getEventsConcert({@Query("client_id") required String client_id, @Query("type") required String type});
}
