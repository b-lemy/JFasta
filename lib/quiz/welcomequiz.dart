

import 'package:flutter/material.dart';
import 'package:flutter_app/new/header.dart';
import 'package:flutter_app/quiz/choices.dart';
import 'package:flutter_app/quiz/dsco_button.dart';
import 'package:flutter_app/quiz/screens/welcome/welcome_screen.dart';

import 'package:flutter_app/quiz/theme.dart';
import 'package:get/get.dart';

class welcomequiz extends StatefulWidget {
  const welcomequiz({Key? key}) : super(key: key);

  @override
  State<welcomequiz> createState() => _welcomequizState();
}

class _welcomequizState extends State<welcomequiz> {
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: headerText("Category"),
          elevation: 0.5,
          leading: IconButton(
            icon: Icon(Icons.category_rounded), onPressed: () {},

          ),
        ),
        body: Stack(
          children: [
            Container(height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 35),
                children: [
                  TextButton(
                    onPressed: (){
                      showModalBottomSheet(
                          isScrollControlled: true,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0)
                              )
                          ),
                          context: context, builder: (context){
                        return forms(context);


                      }
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("English",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      showModalBottomSheet(
                          isScrollControlled: true,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0)
                              )
                          ),
                          context: context, builder: (context){
                        return forms(context);


                      }
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Kiswahili",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      showModalBottomSheet(
                          isScrollControlled: true,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0)
                              )
                          ),
                          context: context, builder: (context){
                        return forms(context);


                      }
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Science",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      showModalBottomSheet(
                          isScrollControlled: true,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0)
                              )
                          ),
                          context: context, builder: (context){
                        return forms(context);


                      }
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Geography",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      showModalBottomSheet(
                          isScrollControlled: true,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0)
                              )
                          ),
                          context: context, builder: (context){
                        return forms(context);


                      }
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Physics",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      showModalBottomSheet(
                        isScrollControlled: true,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0)
                              )
                          ),
                          context: context, builder: (context){
                          return forms(context);


                      }
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Chemistry",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],

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



Widget forms(context){
  return Container(
    color: Colors.grey,
    height: MediaQuery.of(context).copyWith().size.height * 0.45,
    child: ListView(
      children: [
        TextButton(onPressed:(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      WelcomeScreen()));

        },
            child: Text("Form 1",style: TextStyle(fontSize: 20),)),
        SizedBox(height:10 ),
        TextButton(onPressed:(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      WelcomeScreen()));

        }, child: Text("Form 2",style: TextStyle(fontSize: 20),)),
        SizedBox(height:10 ),
        TextButton(onPressed:(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      WelcomeScreen()));

        }, child: Text("Form 3",style: TextStyle(fontSize: 20),)),
        SizedBox(height:10 ),
        TextButton(onPressed:(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      WelcomeScreen()));

        }, child: Text("Form 4",style: TextStyle(fontSize: 20),)),
        SizedBox(height:10 ),
        TextButton(onPressed:(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      WelcomeScreen()));

        }, child: Text("Form 5",style: TextStyle(fontSize: 20),)),
        SizedBox(height:10 ),
        TextButton(onPressed:(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      choices()));

        }, child: Text("Form 6",style: TextStyle(fontSize: 20),))



      ],

    ),
  );
}