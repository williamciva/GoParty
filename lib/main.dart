import 'package:flutter/material.dart';

import 'conf/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoParty',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: routesOfApp,
      debugShowCheckedModeBanner: false,
    );
  }
}
