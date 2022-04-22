import 'package:flutter/material.dart';
import 'package:flutter_app/forum/addpost.dart';

import '../new/header.dart';

class forumintro extends StatefulWidget {
  const forumintro({Key key}) : super(key: key);

  @override
  State<forumintro> createState() => _forumintroState();
}

class _forumintroState extends State<forumintro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Forum",
            style: TextStyle(
                letterSpacing: 6,
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          elevation: 0.5,
        ),
        body:Stack(
          children: [
            SafeArea(
            child: Text("welcomme")

        ),
                 Align(
                  alignment: Alignment(1,0.8),
                  child: AddTodoButton(),
              ),
               ]
               ),

            


        
    
    );
  }

}

