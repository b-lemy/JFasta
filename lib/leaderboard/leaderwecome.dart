

import 'package:flutter/material.dart';
import 'package:flutter_app/new/header.dart';

class leader extends StatelessWidget {
  const leader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Leaderboard "),
          elevation: 0.5,
          leading: IconButton(
            icon: Icon(Icons.leaderboard_outlined), onPressed: () {  },

          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
              Container(
                alignment: Alignment.center,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Winner(),
                    Winner(),
                    Winner(),


                  ],
                )

              ),

            ],
          ),
        )


    );
  }
}

class Winner extends StatelessWidget {

  const Winner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red,),
                      image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.contain
                      )

                  ),
                ),),
              Padding(padding: EdgeInsets.only(top: 142, left: 35),
                child: Container(
                  height: 30,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                  ),
                  child: Center(
                      child: Text("1", style: TextStyle(color: Colors.white),)),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 170, left: 10),
                child: Column(
                  children: [
                    Text("Brian Lema",
                      style: TextStyle(fontSize: 16, color: Colors.white),),
                    Text("1050", style: TextStyle(color: Colors.white),),
                  ],

                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}