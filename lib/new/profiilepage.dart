import 'package:flutter/material.dart';
import 'package:flutter_app/new/logn.dart';
import 'header.dart';

class ProfilePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
     return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text("Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).accentColor,]
              )
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: (){
            print("object");
          },
        ),
        actions: [
          InkWell(
            child: Icon(Icons.settings),
          ),
            SizedBox(width: 14),

            Container(
              margin: EdgeInsets.only( top: 16, right: 16,),
              child: InkWell(
                child: Stack(
                  children: <Widget>[
                    Icon(Icons.notifications),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                        constraints: BoxConstraints( minWidth: 12, minHeight: 12, ),
                        child: Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                      ),
                    )
                  ],
                ),
              ),
            ),
          InkWell(
            child: Icon(Icons.logout_rounded),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
            }
          ),
          SizedBox(width: 14),

        ],
      ),

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: 100, child: HeaderWidget(100,false,Icons.house_rounded),),
            Container(
               alignment: Alignment.center,
               margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
               padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all( color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 20, offset: const Offset(5, 5),),
                      ],
                    ),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("assets/images/1.jpg"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 82,left: 80),
                          child: CircleAvatar(
                          backgroundColor: Colors.black45,
                            child: IconButton(
                              icon: Icon(Icons.edit, color: Colors.white,
                              ),
                             onPressed: (){

                             },
                            ),
                          ),
                        )
                      ]

                    ),
                    // Icon(Icons.person, size: 80, color: Colors.grey.shade300,),
                  ),
                  SizedBox(height: 15,),
                  Text('Brian Lema', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text('Form 6', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "User Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.black,
                                      tiles: [
                                        ListTile(
                                          leading: Icon(Icons.my_location),
                                          title: Text("School"),
                                          subtitle: Text("Agape Seminary"),
                                          trailing: Icon(Icons.dangerous_rounded),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text("lemabrian1234@gmail.com"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text("0757983352"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("About Me"),
                                          subtitle: Text(
                                              "This is a about me link and you can khow about me in this section."),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,),
                        Text("APP VERSION 0.0.1",
                        style:Theme.of(context).textTheme.overline
                        ),
                        SizedBox(
                          height: 80,),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}