//import 'package:itinerary_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:itinerary_app/screens/homepage.dart';
//import 'package:itinerary_app/screens/login.dart';
//import 'package:itinerary_app/db.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primaryColor: Colors.purple,

    ),
    debugShowCheckedModeBanner: false,
    home: Homepage()
    );
  }
  }
