import 'package:flutter/material.dart';
import 'package:routepagesexample/firstPage.dart';
import 'package:routepagesexample/homePage.dart';
import 'package:routepagesexample/landingPage.dart';
import 'package:routepagesexample/secondPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Route Pages Example ',
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      '/firstPage': (BuildContext context) => FirstPage(),
      '/secondPage': (BuildContext context) => SecondPage(),
      '/landingPage': (BuildContext context) => LandingPage(),
    },
  ));
}
