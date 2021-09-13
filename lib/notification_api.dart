


import 'package:dpa/notification%20scheduler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:dpa/Home.dart';

class NotificationsApi{
  static final _notifications=FlutterLocalNotificationsPlugin() ;
  static final onNotifications=BehaviorSubject<String>() ;

  static Future _notificationDetails() async{
    return NotificationDetails(
    android: AndroidNotificationDetails("channelId", "channelName", "channelDescription", 
    importance: Importance.max)
    ) ;
  }

   static Future init({bool initScheduled=false}) async{
     final android=AndroidInitializationSettings('jylogo') ; 
     final iOS=IOSInitializationSettings() ;
     final settings=InitializationSettings(
       iOS: iOS,android: android
     ) ;
  await _notifications.initialize(
    settings,
    onSelectNotification: (payload) async{
        
        onNotifications.add(payload) ;


    },
  ) ;
   }


static Future showNotification({
  int id=0,
  String title, 
  String body,
  String payload,
}) async=>
_notifications.show(
  id,
   title, 
   body,
   await _notificationDetails(),
   payload: payload) ; 


}