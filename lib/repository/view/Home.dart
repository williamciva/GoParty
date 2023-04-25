import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_party/repository/api/Seatgeek.dart';
import 'package:go_party/repository/model/ResponseData.dart';
import 'package:go_party/repository/model/events/Event.dart';
import 'package:go_party/repository/model/events/Meta.dart';

import 'package:go_party/conf/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

FutureBuilder<ResponseData> _listEvents() {
  final SeatgeekClient client =
      SeatgeekClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<ResponseData>(
    future: client.getEventsConcert(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final ResponseData? posts = snapshot.data;
        if (posts != null) {
          return _buildListView(context, posts);
        } else {
          return ListView();
        }
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

Widget _buildListView(BuildContext context, ResponseData posts) {
  return ListView.builder(
    itemBuilder: (context, index) {
      Event event = posts.events[index];
      
      List nameOfBands = event.performers;
      String listNames() {
        String textString = '';
        for(final i in nameOfBands) {
          textString += ", ${i.name}";
        };
        return textString.replaceFirst(',', '');
      }

      return Card(
        child: Column (
          children: [ 
            ExpansionTile(
              title: 
                Text(
                  event.title,
                  style: const TextStyle(fontSize: 18),
                ),
              subtitle: Text(
                "${event.venue.address}, ${event.venue.city} - ${event.venue.country}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Ver no Mapa"),
                    IconButton(
                      icon: const Icon(Icons.map),
                      onPressed: () => Navigator.of(context).pushNamed(
                        MAP_PAGE,
                        arguments: MapParams(
                          mapName: event.venue.name,
                          address: event.venue.address,
                          lat: event.venue.location.lat,
                          lon: event.venue.location.lon,
                        ),
                      ),
                    ),
                  ],
                ),
                children: [
                ListTile(
                  title: 
                    Text(
                      "Address: ${event.venue.address}", 
                    ),
                ),
                ListTile(
                  title: 
                    Text(
                      "City: ${event.venue.city}", 
                    ),
                ),
                ListTile(
                  title: 
                    Text(
                      "Coutry: ${event.venue.country}", 
                    ),
                ),
                ListTile(
                  title: 
                    Text(
                        "Banda(s): ${listNames()}",
                    ),
                ),
              ],
              ),
            // ListTile(
            //   leading: const Icon(
            //     Icons.map,
            //     color: Colors.deepPurple,
            //     size: 40,
            //   ),
            //   title:
            //     Text(
            //       event.title,
            //       style: const TextStyle(fontSize: 18),
            //       onPressed: () => _viewInfoEvent();
            //     ),
            //   subtitle: Text(
            //     "${event.venue.address}, ${event.venue.city} - ${event.venue.country}"),
            //   trailing: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       const Text("Ver no Mapa"),
            //       IconButton(
            //         icon: const Icon(Icons.map),
            //         onPressed: () => Navigator.of(context).pushNamed(
            //           MAP_PAGE,
            //           arguments: MapParams(
            //             mapName: event.venue.name,
            //             address: event.venue.address,
            //             lat: event.venue.location.lat,
            //             lon: event.venue.location.lon,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      );
    },
    itemCount: posts.events.length,
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 221, 235),
      appBar: AppBar(
        title: const Text("Eventos"),
        leading: const Icon(Icons.event),
      ),
      body: _listEvents(),
    );
  }
}
