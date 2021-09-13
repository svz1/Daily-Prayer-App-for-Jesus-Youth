

import 'package:dpa/notficiations%20plugin.dart';
import 'package:dpa/secondscreen.dart';
import 'package:flutter/material.dart';

class localnotificationscreen extends StatefulWidget {
  

  @override
  _localnotificationscreenState createState() => _localnotificationscreenState();
}

class _localnotificationscreenState extends State<localnotificationscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationsPlugin.
    setListenerForLowerVersions(onNotificationInLowerVersions) ;
    notificationsPlugin.setOnNotificationCLick(onNotificationClick) ;
  }
  
  @override
  
  Widget build(BuildContext coontext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("notifications"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
           await notificationsPlugin.showNotif() ; 
         // await notificationsPlugin.showdaily(); 
          print("clicked") ; 
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
            color: Colors.amber,
          child: Text("click"),  
          ),
        ),

      ),
      
    );
  }

  onNotificationInLowerVersions(ReceivedNotification receivedNotification) {

  }
  onNotificationClick(String payload){
    print('payload $payload') ;
    print("hello") ; 
    Navigator.push(context, MaterialPageRoute(builder: (coontext){
      return secondscreen(payload: payload,) ;
    })) ;
  }
}