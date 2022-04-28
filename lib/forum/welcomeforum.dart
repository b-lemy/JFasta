import 'package:flutter/material.dart';
import 'package:flutter_app/forum/addpost.dart';
import 'package:flutter_app/forum/post.dart';
import 'package:flutter_app/quiz/widgets/avatar.dart';
import 'package:flutter_app/quiz/widgets/helpers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../new/header.dart';

class forumintro extends StatefulWidget {
  const forumintro({Key? key}) : super(key: key);

  @override
  State<forumintro> createState() => _forumintroState();
}

class _forumintroState extends State<forumintro> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Forum",
              style: GoogleFonts.openSans(
                  letterSpacing: 4,
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.search_off_outlined),
              onPressed: (){
                print("object");
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Avatar.small(url: Helpers.randomPictureUrl(), onTap: () {  },),
              ),
            ],
            elevation: 0.5,
          ),
          body:ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search for articles, author, and tags',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Card(
                  child: post()
              ),
                 ]
                 ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child:  AddTodoButton(),
        ),

      ),
    );
  }

}

