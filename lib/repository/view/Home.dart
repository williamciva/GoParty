import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_party/repository/api/Api.dart';
import 'package:go_party/repository/model/ResponseData.dart';
import 'package:go_party/repository/model/events/Meta.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

FutureBuilder<ResponseData> _listEvents() {
  final ApiClient client =
      ApiClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<ResponseData>(
    future: client.getEventsConcert(
      client_id: "MzMwODUzNTV8MTY4MTU1NzgzNi4zNDgwNDE1",
      type: "concert",
    ),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final ResponseData? posts = snapshot.data;
        if (posts != null) {
          return _buildListView(context, posts);
        } else{
          print(snapshot.stackTrace);
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
      return Card(
        child: ListTile(
          leading: const Icon(
            Icons.account_box,
            color: Colors.green,
            size: 50,
          ),
          title: Text(
            posts.events[index].venue.name,
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: Text(posts.events[index].id.toString()),
        ),
      );
    },
    itemCount: posts.events.length,
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  _listEvents();
  }
}
