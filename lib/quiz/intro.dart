import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/forum/welcomeforum.dart';
import 'package:flutter_app/new/splash.dart';
import 'package:flutter_app/quiz/welcomequiz.dart';
 import '../new/profiilepage.dart';
 import '../new/registration.dart';
import '../new/logn.dart';



class quizapp extends StatefulWidget {
  const quizapp({Key key}) : super(key: key);

  @override
  State<quizapp> createState() => _quizappState();
}

class _quizappState extends State<quizapp> {
  double _headerHeight = 200;
  Key _formKey = GlobalKey<FormState>();
  static const IconData quiz = IconData(0xe4ff, fontFamily: 'MaterialIcons');

  int index = 0;
  final screens = [
        welcomequiz(),
        RegistrationPage(),
         forumintro(),
        ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade200,

        ),
        child: NavigationBar(
          backgroundColor: Colors.red,
          height: 60,
          selectedIndex: index,
          animationDuration: Duration(seconds: 3),
          onDestinationSelected: (index) =>
          setState(() =>this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            // NavigationDestination(
            //     icon: Icon(Icons.notes_sharp),
            //     label: 'notes',
            //     selectedIcon: Icon(Icons.email_outlined),
            // ),
            NavigationDestination(
                icon: Icon(Icons.leaderboard_rounded), label: 'leaderboard'),
            NavigationDestination(
                icon: Icon(Icons.forum_outlined), label: 'Forum'),
            NavigationDestination(
                icon: Icon(Icons.account_circle), label: 'Profile'),

          ],
        ),

      ),

    );
  }
}
