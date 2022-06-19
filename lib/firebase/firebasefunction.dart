import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_app/conts/indicator.dart';
import 'package:flutter_app/quiz/intro.dart';
import 'package:get/get.dart';

class Firebasefunctions{

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future <void> createUserCredetail(String name ,String email) async {
    try {
      await _firebaseFirestore
          .collection("users")
          .doc(_auth.currentUser!.uid)
          .set({"uid":_auth.currentUser!.uid ,
        "name":name,
        "email": email,
      }).then((value) {
        // Indicator.closelaoding();
        Get.to(() => quizapp());
      });

    }
    catch (e) {
      print(e);
    }
  }

}