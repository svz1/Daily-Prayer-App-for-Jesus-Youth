

import 'package:dpa/Home.dart';
import 'package:dpa/notification%20scheduler.dart';
import 'package:flutter/material.dart';

class landingpage extends StatelessWidget {
  

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