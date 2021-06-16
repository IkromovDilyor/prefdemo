import 'package:flutter/material.dart';
import 'package:prefdemo/pages/home_page.dart';
import 'package:prefdemo/pages/second_page.dart';
import 'package:prefdemo/pages/three_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 primarySwatch: Colors.blue,
      ),
      home: SecondPage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        SecondPage.id:(context)=>SecondPage(),
        ThreePage.id:(context)=>ThreePage(),
      },

    );
  }
}



