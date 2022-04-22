

import 'package:flutter/material.dart';
import 'package:flutter_app/new/header.dart';
import 'package:flutter_app/quiz/QuizScreen.dart';
import 'package:flutter_app/quiz/dsco_button.dart';
import 'package:flutter_app/quiz/store/quizstore.dart';

import 'package:flutter_app/quiz/theme.dart';

class welcomequiz extends StatefulWidget {
  const welcomequiz({Key key}) : super(key: key);

  @override
  State<welcomequiz> createState() => _welcomequizState();
}

class _welcomequizState extends State<welcomequiz> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final QuizStore _quizStore = QuizStore();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  headerText("Quiz Section"),
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
            Container(
            alignment: Alignment.center,
                      child:
                      Column(
                        children: [

                          SizedBox(height: 170),
                          ...homeScreenButtons(context),
                        ],
                      ),
                    ),

                      ],
                    ),
                  )

    );
  }

 }

Text headerText(String text) {
  return Text(
    text,
    style: TextStyle(
        letterSpacing: 6,
        fontSize: 30,
        color: ThemeHelper.accentColor,
        fontWeight: FontWeight.bold,
        shadows: [Shadow(color: ThemeHelper.shadowColor, offset: Offset(-5, 5), blurRadius: 30)]
    ),
  );
}

List<Widget> homeScreenButtons(BuildContext context) {
  return [
    DiscoButton(
      onPressed: () async {
         // var quiz = await _quizStore.getRandomQuizAsync();
         // Navigator.pushNamed(context, QuizScreen.routeName, arguments: quiz);
      },
      child: Text(
        "Timed Quiz",
        style: TextStyle(fontSize: 20, color: ThemeHelper.primaryColor),
      ),
       isActive: true,
    ),
    DiscoButton(
      onPressed: () {
        // Navigator.pushNamed(context, QuizCategoryScreen.routeName);
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
  ];
}


