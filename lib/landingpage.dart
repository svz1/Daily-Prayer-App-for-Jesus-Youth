



import 'package:dpa/Home.dart';
import 'package:dpa/notification%20scheduler.dart';
import 'package:dpa/notification_api.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

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
          scheduler()
        ],
      ),
    );
  }
}