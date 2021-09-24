import 'package:dpa/Home.dart';
import 'package:dpa/Notification/LocalNotificationScreen.dart';
import 'package:dpa/time%20picker%20trial.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class landingpage extends StatefulWidget {
  

  @override
  _landingpageState createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        children: [
          Home(),
         LocalNotificationScreen(),
         timepicker(),
        ],
      ),
    );
  }
}