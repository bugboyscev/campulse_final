import 'package:campulse/home.dart';
import 'package:campulse/report.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'report.dart';
import 'help.dart';
import 'comments.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
routes: {

  'login':(context) =>myapp() ,
  'register':(context) => register(),
  'home':(context) => home(),
  'report':(context) => report(),
  'help':(context) => help(),
  'comments':(context) => comments(),
},

  ));
}


