
import 'package:flutter/material.dart';
import 'dart:convert';


class Post {
  final int id;
  final String Title;
  final String Description;
  final DateTime createdTime;
  final String image;
  final String userEmail;
  final String userId;


  Post({
    required this.id,
    required this.Title,
    required this.Description,
    required this.createdTime,
    required this.image,
    required this.userEmail,
    required this.userId,


  });
//   Post copyWith ({
//    int ? id,
//
// })
//
//   Map<String,object?> toJson() => {
//
//   };
}

