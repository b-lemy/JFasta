import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/new/registration.dart';
import 'package:flutter_app/new/themehelper.dart';
import 'package:flutter_app/quiz/intro.dart';


import 'header.dart';
import 'forgetpassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 200;
  final _formKey = GlobalKey<FormState>();
  TextEditingController uname = TextEditingController();
  TextEditingController upaswd = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _headerHeight,
                child: HeaderWidget( _headerHeight, true,
                    Icons.login_rounded), //let's create a common header widget
              ),
              SafeArea(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 1, 20, 10),
                    margin: EdgeInsets.fromLTRB(
                        20, 10, 20, 10), // This will be the login form
                    child: Column(
                      children: [
                        Text(
                          'JFasta Quiz App',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Signin into your account',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 30.0),
                        Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          key: _formKey,
                          child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: TextFormField(
                                      controller: uname,
                                      validator: (value){
                                        if(value != null){
                                          return 'enter correct username';
                                        }else{
                                          return null;
                                        }
                                      },

                                      decoration: ThemeHelper()
                                          .textInputDecoration('Username',
                                              'Enter your Username'),
                                    ),
                                    decoration:
                                        ThemeHelper().inputBoxDecorationShaddow(),
                                  ),
                                  SizedBox(height: 30.0),
                                  Container(
                                    child: TextField(
                                      controller: upaswd,

                                      obscureText:true,
                                      decoration: ThemeHelper()
                                          .textInputDecoration(
                                              'Password', 'Enter your password'),
                                    ),
                                    decoration:
                                        ThemeHelper().inputBoxDecorationShaddow(),
                                  ),
                                  SizedBox(height: 15.0),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPasswordPage()),
                                        );
                                      },
                                      child: Text(
                                        "Forgot your password?",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: ThemeHelper()
                                        .buttonBoxDecoration(context),
                                    child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child: Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(40, 10, 40, 10),
                                          child: Text(
                                            'Sign In'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          final isValidForm = _formKey.currentState!.validate();
                                          String _name = uname.text.toString().trim();
                                          String _paswd = upaswd.text.toString();

                                          if (_name.isEmpty) {
                                            print('Please Enter User Name');

                                          } else if (_paswd.isEmpty) {
                                            print('Please Enter Password');

                                          } else {
                                            if (_name == 'admin' && _paswd == 'admin') {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          quizapp()));
                                            } else {
                                              print('Login Fail');
                                            }
                                          }
                                        },
                                    ),
                                    
                                    
                                    
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                    //child: Text('Don\'t have an account? Create'),
                                    child: Text.rich(TextSpan(children: [
                                      TextSpan(text: "Don\'t have an account? "),
                                      TextSpan(
                                        text: 'Create',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegistrationPage()));
                                          },
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            // color: Theme.of(context).accentColor
                                        ),
                                      ),
                                    ])),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
