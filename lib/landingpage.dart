import 'package:dpa/Home.dart';
import 'package:dpa/local%20notifications.dart';
import 'package:dpa/trial/LocalNotificationScreen.dart';
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
         LocalNotificationScreen()
        ],
      ),
    );
  }
}