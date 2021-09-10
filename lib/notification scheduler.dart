


import 'package:dpa/Home.dart';
import 'package:dpa/notification_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz ;
import 'package:timezone/data/latest.dart' as tz ;

FlutterLocalNotificationsPlugin notificationsPlugin=FlutterLocalNotificationsPlugin() ;


class scheduler extends StatefulWidget {

   @override
    
  _schedulerState createState() => _schedulerState();
                              
}

class _schedulerState extends State<scheduler> {

  @override
  void initState() {
    initialiseSetting();
    tz.initializeTimeZones() ;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: GestureDetector(
        onTap: (){print("payload trial ") ;
       NotificationsApi.showNotification(
         title: "JY",
         body: "Reminder",
         payload: "hello"
       );
       
        // displaynotification() ; 
         print("success") ;
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal:50),
          decoration:BoxDecoration(
            color: Colors.green
          ),
          child: Text("hello",style: TextStyle(color: Colors.white),),
        ),
      )
    ),
      
    );
    
  }

  Future<void> displaynotification() async{
        notificationsPlugin.zonedSchedule(
      0,
       "Jesus Youth",
        "Daily Prayer Reminder",
         tz.TZDateTime.now(tz.local).add(Duration(seconds: 3),),
         
          NotificationDetails(
            android:AndroidNotificationDetails('channelId', 'channelName', 'channelDescription') 
          ),
           uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
            androidAllowWhileIdle: true,
            matchDateTimeComponents: DateTimeComponents.time) ; 

           
  }
 

}



void initialiseSetting() async{
  var initializeAndroid=AndroidInitializationSettings('jylogo') ; 
  var initializeSettings=InitializationSettings( android: initializeAndroid) ; 
 await notificationsPlugin.initialize(initializeSettings,


 
 ) ;  

}

