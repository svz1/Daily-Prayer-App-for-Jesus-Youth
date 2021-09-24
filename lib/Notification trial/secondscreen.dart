import 'package:flutter/material.dart';


class secondscreen extends StatefulWidget {
final String payload ; 
secondscreen({this.payload}) ; 


  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Reroute"),
        centerTitle: true,

      ),
      body: Center(
        child:Text(widget.payload)
      ),
      
    );
  }
}