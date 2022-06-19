import 'package:flutter/material.dart';

import 'package:flutter_app/quiz/controllers/question_controller.dart';
import 'package:flutter_app/quiz/intro.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: Colors.black),
              ),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color:Colors.black),
              ),

              RaisedButton(
                child: Text('Finish'),
                color: Colors.green,
                onPressed:(){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            quizapp()));

              },
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
