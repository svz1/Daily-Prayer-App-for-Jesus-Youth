import 'package:dpa/Home.dart';
import 'package:dpa/landingpage.dart';
import 'package:dpa/Notification/LocalNotificationScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landingpage()
    );
  }
}
