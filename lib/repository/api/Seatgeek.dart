import 'package:dio/dio.dart';
import 'package:go_party/repository/model/ResponseData.dart';
import 'package:retrofit/retrofit.dart';
import 'SeatgeekPaths.dart';

part 'Seatgeek.g.dart';

const String _client_id = "MzMwODUzNTV8MTY4MTU1NzgzNi4zNDgwNDE1";

@RestApi(baseUrl: "https://api.seatgeek.com/2/")
abstract class SeatgeekClient {
  factory SeatgeekClient(Dio dio, {String baseUrl}) = _SeatgeekClient;

  @GET("${SeatgeekPaths.events}?client_id=${_client_id}")
  Future<ResponseData> getEvents();

  @GET("${SeatgeekPaths.events}?client_id=${_client_id}&type=concert")
  Future<ResponseData> getEventsConcert();
}
