import 'package:dream_dictionary/pages/home.dart';
import 'package:dream_dictionary/routes/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      home: Home(),
    );
  }
}