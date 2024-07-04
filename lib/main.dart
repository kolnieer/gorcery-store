import 'package:flutter/material.dart';
import 'package:untitled2/Home.dart';
import 'package:untitled2/pages/Login.dart';
import 'package:untitled2/pages/dashboard.dart';
import 'package:untitled2/pages/menu.dart';
import 'package:untitled2/pages/Signup.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/' : (context) => Dashboard(),
    '/menu' : (context) => Menu(),
    '/profile' : (context) => Home(),
    '/Signup' : (context) => Signup(),
    '/login' : (context) => Login(),
  },
));


