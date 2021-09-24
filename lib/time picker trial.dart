

import 'package:flutter/material.dart';
import 'package:dpa/Notification/LocalNotificationScreen.dart';
TimeOfDay _time;

class timepicker extends StatefulWidget {
 

  @override
  _timepickerState createState() => _timepickerState();
}

class _timepickerState extends State<timepicker> {

   @override
  
  @override
  Widget build(BuildContext context) {
    var _times;
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker"),
      ),
      body: Center(
        child: GestureDetector(
          onTap:null,
          child: Container(
          
             child: Text("Time : ${_time.hour}:${_time.minute}")),
        )
      ),
      
    );
  }

 
}
