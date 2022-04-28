import 'package:flutter/material.dart';
import 'package:flutter_app/models/postmodel.dart';
import 'package:flutter_app/models/scoopedmodel/postsscooped.dart';
import 'package:scoped_model/scoped_model.dart';

// import 'package:http/http.dart';
import 'new/splash.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
  List<Post> _posts =[];

  void _addPost(Post,post){

  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "JipimeFASTA",

        themeMode: ThemeMode.dark,
        theme: ThemeData(
          // brightness: Brightness.dark,
          // scaffoldBackgroundColor: Colors.grey.shade100,
          primarySwatch: Colors.red,
        ),
        home:
        SplashScreen(),

    );
  }
}


