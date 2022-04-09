import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

import 'new/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'userView',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.red,
      ),
      home: 
      SplashScreen(),
    );
  }
}


