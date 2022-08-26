import 'package:flutter/material.dart';
import 'package:structure_flutter/views/screens/top_up_point_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Structure Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TopUpPointScreen(),
    );
  }
}
