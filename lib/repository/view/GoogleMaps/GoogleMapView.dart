import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_party/conf/routes.dart';
import 'package:go_party/repository/view/GoogleMaps/GooglePolylines.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatefulWidget {
  const GoogleMapView({super.key});

  @override
  State<GoogleMapView> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated({
    required GoogleMapController controller,
    required MapParams args,
  }) async {
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

  final _polyLines = GooglePolylines();

  void _traceRoute({
    required double lat,
    required double lon,
  }) async {
    try {
      Position atualPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      _markers['Current Location'] = Marker(
        markerId: const MarkerId('Current Location'),
        position: LatLng(atualPosition.latitude, atualPosition.longitude),
      );
      print(
          '${atualPosition.latitude} / ${atualPosition.longitude} //// $lat / $lon');
      await _polyLines.createPolylines(
        atualPosition.latitude,
        atualPosition.longitude,
        lat,
        lon,
      );
      setState(() {});
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as MapParams;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async => _traceRoute(
              lat: args.lat,
              lon: args.lon,
            ),
            icon: const Icon(Icons.fork_right_outlined),
          )
        ],
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        zoomGesturesEnabled: true,
        initialCameraPosition:
            CameraPosition(target: LatLng(args.lat, args.lon), zoom: 15),
        onMapCreated: (controller) =>
            _onMapCreated(controller: controller, args: args),
        markers: _markers.values.toSet(),
        polylines: Set<Polyline>.of(_polyLines.polylines.values),
      ),
    );
  }
}
