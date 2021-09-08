import 'package:flutter/material.dart';
import 'package:homework8/pages/game/gamepage.dart';

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

      ),
      home: gamepage()
      ,
    );
  }
}

TestCounter() {
}