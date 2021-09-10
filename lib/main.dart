import 'package:dpa/Home.dart';
import 'package:dpa/landingpage.dart';
import 'package:dpa/notification_api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationsApi.init() ; 
    listenNotifications() ;
  }

void listenNotifications()=>
NotificationsApi.onNotifications.stream.listen(onclickedNotification);
void onclickedNotification(String? payload)=>
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: landingpage(),
      
    );
  }
}