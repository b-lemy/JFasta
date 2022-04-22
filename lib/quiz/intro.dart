
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/forum/welcomeforum.dart';
import 'package:flutter_app/quiz/welcomequiz.dart';
 import '../new/profiilepage.dart';
 import '../new/registration.dart';




class quizapp extends StatefulWidget {
  const quizapp({Key key}) : super(key: key);

  @override
  State<quizapp> createState() => _quizappState();
}

class _quizappState extends State<quizapp> {
  static const IconData quiz = IconData(0xe4ff, fontFamily: 'MaterialIcons');


  int indexx = 0 ;
  final screens = [
        welcomequiz(),
        RegistrationPage(),
        forumintro(),
        ProfilePage(),
  ];



  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.home,size: 30,),
      Icon(Icons.leaderboard_rounded,size: 30,),
      Icon(Icons.forum_outlined,size: 30,),
      Icon(Icons.account_circle,size: 30,),

    ];
    return Container(
      color: Colors.redAccent,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBody: true,
            body: screens[indexx],

            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(color: Colors.white)
              ),
              child: CurvedNavigationBar(

                     color: Colors.redAccent,
                     backgroundColor: Colors.transparent,
                     height: 60,
                     index: indexx,
                     items: items,
                     animationCurve: Curves.easeInOut,
                    animationDuration: Duration(milliseconds: 300),
                   onTap: (indexx) =>setState(() => this.indexx = indexx),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
