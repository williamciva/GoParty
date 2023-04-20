import 'package:go_party/repository/view/Home.dart';
import 'package:go_party/repository/view/GoogleMapView.dart';

const String HOME_PAGE = '/';
const String MAP_PAGE = '/map';

var routesOfApp = {
  HOME_PAGE: (context) => const Home(),
  MAP_PAGE: (context) => const GoogleMapView(),
};

class MapParams {
  final String mapName;
  final String address;
  final double lat;
  final double lon;

  MapParams(
      {required this.mapName,
      required this.address,
      required this.lat,
      required this.lon});
}
