import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:io' show File,Platform ;
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz ;
import 'package:timezone/data/latest.dart' as tz; 

class NotificationsPlugin{
 
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin ;
   final BehaviorSubject<ReceivedNotification>
   didReceivedLocalNotificationSubject=
   BehaviorSubject<ReceivedNotification>();
   var initializationSettings ; 
   
   
   NotificationsPlugin._() {

    init() ; }

    init() async{
      
      flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();
      if (Platform.isIOS) {
        _requestIOSPermission() ; 
      }
      initializePlatformSpecifics() ;
    }
  initializePlatformSpecifics() {
    var initializationSettingsAndroid=AndroidInitializationSettings('jylogo') ;
    var initializationSettingsIOS=IOSInitializationSettings(
      requestAlertPermission: true , 
      requestBadgePermission: true ,
      requestSoundPermission: false,
      onDidReceiveLocalNotification: (id,title,body,payload) async{
        ReceivedNotification receivedNotification=ReceivedNotification(id:id,title:'title',body:'body',payload: 'payload') ; 
        didReceivedLocalNotificationSubject.add(receivedNotification) ;  
      }
    ) ; 

     initializationSettings=initializationSettings(
      initializationSettingsAndroid,initializationSettingsIOS) ; 
    
    
  }

    _requestIOSPermission() {
      flutterLocalNotificationsPlugin.
      resolvePlatformSpecificImplementation<
      IOSFlutterLocalNotificationsPlugin>()
      .requestPermissions(
        alert: false,
        badge: true,
        sound: true,
      ) ; 
    }

    setListenerForLowerVersions(Function onNotificationInLowerVersions){
      didReceivedLocalNotificationSubject.listen((ReceivedNotification){
       onNotificationInLowerVersions(ReceivedNotification) ; 
      }) ; 
    }

    setOnNotificationCLick(Function onNotificationClick) async {
      
     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (String payload) async {
        onNotificationClick(payload) ; 

      });
    }

    Future<void> showNotif() async{
      var androidChannelSpecifics=AndroidNotificationDetails(
       ' channelId', 'channelName',' channelDescription',
       importance: Importance.max,
       priority: Priority.high,
      playSound: true,
       styleInformation: DefaultStyleInformation(true, true),

       
       ) ;
       var iosChannelSpecifics=IOSNotificationDetails() ; 
       var platformChannelSpecifics =NotificationDetails(android:androidChannelSpecifics,iOS: iosChannelSpecifics) ; 
       await flutterLocalNotificationsPlugin.show(0, "<b>Jesus Youth</b> "," Daily Prayer Reminder", platformChannelSpecifics,payload: "test payload") ; 
    }  

    Future<void> scheduleNotif() async{
      tz.initializeTimeZones() ;
      var scheduledNotificationDateTime=tz.TZDateTime.now(tz.local).add(Duration(seconds: 1)) ; 
      var androidChannelSpecifics=AndroidNotificationDetails(
       ' channelId ', 'channelName ',' channelDescription ',
       importance: Importance.max,
       priority: Priority.high,
       playSound: true,
       styleInformation: DefaultStyleInformation(true, true),
       
       
       ) ;
       var iosChannelSpecifics=IOSNotificationDetails() ; 
       var platformChannelSpecifics =NotificationDetails(android:androidChannelSpecifics,iOS: iosChannelSpecifics) ; 
       await flutterLocalNotificationsPlugin.zonedSchedule(0, "<b>Jesus Youth</b> "," Daily Prayer Reminder 2",scheduledNotificationDateTime, platformChannelSpecifics,androidAllowWhileIdle: true,uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime, payload: "test payload",) ; 
    }

    Future<void> showdaily() async{
      var time=Time(16,46,0) ; 
      var androidChannelSpecifics=AndroidNotificationDetails(
       'channelId 5', 'channelName 5','channelDescription 5',
       importance: Importance.max,
       priority: Priority.high,
      playSound: true,
       styleInformation: DefaultStyleInformation(true, true),

       
       ) ;
       var iosChannelSpecifics=IOSNotificationDetails() ; 
       var platformChannelSpecifics =NotificationDetails(android:androidChannelSpecifics,iOS: iosChannelSpecifics) ; 
       await flutterLocalNotificationsPlugin.showDailyAtTime(0, "<b>Jesus Youth</b> "," Daily Prayer Reminder",time, platformChannelSpecifics, payload: "test payload", ) ; 

       
    }  

    static tz.TZDateTime _scheduleDaily(Time time) {
      final now=tz.TZDateTime.now(tz.local) ;
      final scheduledDate=tz.TZDateTime(
        tz.local,
        now.year,
        now.month,
        now.day,
        time.hour,time.minute,time.second

      ) ;
      return scheduledDate.isBefore(now)
      ? scheduledDate.add(Duration(days: 1)):scheduledDate;
    }


}

NotificationsPlugin notificationsPlugin=NotificationsPlugin._() ;

class ReceivedNotification{
  final int id;
  final String title; 
  final String body ;
  final String payload; 
  ReceivedNotification({
     this.id, this.title, this.body, this.payload
  }) ;
}