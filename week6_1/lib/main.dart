import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week6_1/addinfo.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'additional information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddInfo(),
    );
  }
}
