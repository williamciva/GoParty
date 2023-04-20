import 'package:go_party/repository/view/Home.dart';
import 'package:go_party/repository/view/Map.dart';

const String HOME_PAGE = '/';
const String MAP_PAGE = '/map';

var routesOfApp = {
  HOME_PAGE: (context) => const Home(),
  MAP_PAGE: (context) => const Map(),
};

class MapParams {
  final double lat;
  final double lon;

  MapParams({required this.lat, required this.lon});
}
