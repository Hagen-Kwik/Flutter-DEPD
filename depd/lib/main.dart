// import 'package:depd/home.dart';
import 'package:depd/mission1.dart';
// import 'package:depd/room.dart';
// import 'package:depd/mission2.dart';

// import 'package:depd/room.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Mission1Page(),
    );
  }
}
