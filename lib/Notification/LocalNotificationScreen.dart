import 'package:dpa/Home.dart';
import 'package:dpa/landingpage.dart';
import 'package:dpa/Notification/NotificationPlugin.dart';
import 'package:flutter/material.dart';


TimeOfDay _time;
class LocalNotificationScreen extends StatefulWidget {
  @override
  _LocalNotificationScreenState createState() =>
      _LocalNotificationScreenState();
}

class _LocalNotificationScreenState extends State<LocalNotificationScreen> {
  //
  String title="Time Picker" ;
  TimeOfDay _time;

  int count = 0;

  @override
  void initState() {
    super.initState();
     _time=TimeOfDay.now() ; 
    notificationPlugin
        .setListenerForLowerVersions(onNotificationInLowerVersions);
    notificationPlugin.setOnNotificationClick(onNotificationClick);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Notifications'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [GestureDetector(
          onTap: _pickTime,
          child: Container(
          
             child: Text("Time : ${_time.hour}:${_time.minute}")),
        ),
            FlatButton(
              onPressed: () async {
               // await notificationPlugin.showNotification();
                // await notificationPlugin.scheduleNotification();
              //  await notificationPlugin.showNotificationWithAttachment();
                // await notificationPlugin.repeatNotification();
                 await notificationPlugin.showDailyAtTime();
                // await notificationPlugin.showWeeklyAtDayTime();
                // count = await notificationPlugin.getPendingNotificationCount();
                // print('Count $count');
                // await notificationPlugin.cancelNotification();
                // count = await notificationPlugin.getPendingNotificationCount();
                // print('Count $count');
              },
              child: Text('Send Notification'),
            ),
          ],
        ),
      ),
    );
  }

  _pickTime() async{
  TimeOfDay time=await showTimePicker(context: context, initialTime: _time,
  builder: (BuildContext context,Widget child) {
    return Theme(data: ThemeData(
      primaryColor: Colors.black,
      accentColor:Colors.grey[800],

    ), 
    child: child) ; 
  }
  ) ; 
  if(time!=null){
    setState(() {
      _time=time; 
    });
  }
  }

  onNotificationInLowerVersions(ReceivedNotification receivedNotification) {
    print('Notification Received ${receivedNotification.id}');
  }

  onNotificationClick(String payload) {
    print('Payload $payload');
    Navigator.push(context, MaterialPageRoute(builder: (coontext) {
      return landingpage();
    }));
  }
}
