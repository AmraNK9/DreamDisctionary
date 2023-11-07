import 'package:dream_dictionary/pages/detail.dart';
import 'package:dream_dictionary/pages/home.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final arg = settings.arguments;
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (context) => Home(),);
      case "/details":
        return MaterialPageRoute(builder: (context) => DetailPage(args: arg),);
      default:
        return MaterialPageRoute(builder: (context) => Home(),);
    }
  }
}