import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_party/conf/routes.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class BingMapView extends StatefulWidget {
  const BingMapView({super.key});

  @override
  State<BingMapView> createState() => _BingMapViewState();
}

class _BingMapViewState extends State<BingMapView> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as MapParams;
    const String _bingKey =
        'AiM-WqWUUZyraLXcnEDTfJ7dzyLbDrPC-kDhEjl-Jw9pYgfduL2SBSNAnky0wQl0';
    print("lat=${args.lat} // lgt=${args.lon}");
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
        onPressed: () => Navigator.pop(
          context,
          HOME_PAGE,
        ),
      )),
      body: Center(
        child: Container(
            child: FutureBuilder(
          future: getBingUrlTemplate(
              'http://dev.virtualearth.net/REST/V1/Imagery/Metadata/AerialWithLabelsOnDemand?output=json&uriScheme=https&include=ImageryProviders&key=${_bingKey}'),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              final String urlTemplate = snapshot.data;
              return SfMaps(
                layers: [
                  MapTileLayer(
                    initialZoomLevel: 15,
                    initialFocalLatLng: MapLatLng(args.lat, args.lon),
                    urlTemplate: urlTemplate,
                    initialMarkersCount: 1,
                    markerBuilder: (context, index) => MapMarker(
                      latitude: args.lat,
                      longitude: args.lon,
                      child: const Icon(
                        Icons.push_pin_sharp,
                        color: Color.fromARGB(255, 207, 14, 0),
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            blurRadius: 20,
                          )
                        ],
                        size: 40,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        )),
      ),
    );
  }
}
