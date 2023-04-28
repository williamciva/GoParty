import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GooglePolylines {
  late PolylinePoints polylinePoints;

  List<LatLng> polylineCoordinates = [];

  Map<PolylineId, Polyline> polylines = {};

  createPolylines(
    double startLatitude,
    double startLongitude,
    double destinationLatitude,
    double destinationLongitude,
  ) async {
    // Initializing PolylinePoints
    polylinePoints = PolylinePoints();

    // Generating the list of coordinates to be used for
    // drawing the polylines
    PolylineResult result = PolylineResult(points: List.empty());
    try {
      result = await polylinePoints.getRouteBetweenCoordinates(
        'AIzaSyAGINbLPN0BXFI_60vzaA7_DBBFYDUemjc',
        PointLatLng(startLatitude, startLongitude),
        PointLatLng(destinationLatitude, destinationLongitude),
      );
    } catch (e) {}
    ;

    polylineCoordinates.clear();
    // Adding the coordinates to the list
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    } else {
      polylineCoordinates.add(LatLng(startLatitude, startLongitude));
      polylineCoordinates
          .add(LatLng(destinationLatitude, destinationLongitude));
    }

    // Defining an ID
    PolylineId id = const PolylineId('poly');

    // Initializing Polyline
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 3,
    );

    // Adding the polyline to the map
    polylines[id] = polyline;
  }
}
