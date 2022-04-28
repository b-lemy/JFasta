import 'dart:async';

import 'package:flutter/material.dart';
import 'logn.dart';
import 'package:lottie/lottie.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  _SplashScreenState(){

     new Timer(const Duration(milliseconds: 4000), (){
       setState(() {
         Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
       });
     });

    new Timer(
      Duration(milliseconds: 1000),(){
        setState(() {
          _isVisible = true; // Now it is showing fade effect and navigating to Login page
        });
      }
    );

  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.red,


     child:  Lottie.asset("assets/done.json"),

    );
  }
}