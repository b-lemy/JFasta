

import 'package:flutter/material.dart';
import 'package:flutter_app/new/header.dart';

import 'package:flutter_app/quiz/constants.dart';

import 'package:flutter_app/quiz/dsco_button.dart';
import 'package:flutter_app/quiz/screens/quiz/quiz_screen.dart';

import 'package:flutter_app/quiz/theme.dart';
import 'package:get/get.dart';


class choices extends StatefulWidget {
    static const routeName = '/home';
  const choices({Key? key}) : super(key: key);

  @override
  State<choices> createState() => _choicesState();
}

class _choicesState extends State<choices> {
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
          children: [

            Container(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
               Container(
               alignment: Alignment.center,
                         child:
                         Column(
                           children: [

                             SizedBox(height: 170),

       DiscoButton(
                onPressed: () {
               
                         },
                child: Text(
                   "Timed Quiz",
                     style: TextStyle(fontSize: 20, color: ThemeHelper.primaryColor),
                     ),
                       isActive: true,
                      ),
                       DiscoButton(
                     onPressed: () {
                       
                       
                     },
                         child: Text(
                            "Survival Streak",
                        style: TextStyle(fontSize: 20, color: ThemeHelper.primaryColor),
                       ),
                        ),
                          DiscoButton(
                          onPressed: () {
                      // Navigator.pushNamed(context, QuizHistoryScreen.routeName);
                     },
                          child: Text(
                               "Head to Head",
                          style: TextStyle(fontSize: 20, color: ThemeHelper.primaryColor),
                        ),
                    ),
                    ],
                         ),
                       ),
          
                         ],
                       ),
    );
  }
}