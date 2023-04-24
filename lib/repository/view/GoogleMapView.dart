import 'package:flutter/material.dart';
import 'package:go_party/conf/routes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatefulWidget {
  const GoogleMapView({super.key});

  @override
  State<GoogleMapView> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(
      {required GoogleMapController controller,
      required MapParams args}) async {
    setState(() {
      _markers.clear();

      final marker = Marker(
        markerId: MarkerId(args.mapName),
        position: LatLng(args.lat, args.lon),
        infoWindow: InfoWindow(
          title: args.mapName,
          snippet: args.address,
        ),
      );
      _markers[args.mapName] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as MapParams;
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(args.lat, args.lon), zoom: 15),
        onMapCreated: (controller) =>
            _onMapCreated(controller: controller, args: args),
        markers: _markers.values.toSet(),
      ),
    );
  }
}
