// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoped_model/scoped_model.dart';

import 'new/splash.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

   runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
         debugShowCheckedModeBanner: false,
          title: "JipimeFASTA",
          themeMode: ThemeMode.dark,
          theme: ThemeData(

            // brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.grey,
            primarySwatch: Colors.red,
          ),
          home:
          SplashScreen(),
    );
  }
}


