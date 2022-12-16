import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_details/screens/home/screen_home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'student_details',
      theme: ThemeData(
        backgroundColor: Colors.red,
      ),
      home: const ScreenHome(),
    );
  }
}
