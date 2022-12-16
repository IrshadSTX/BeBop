// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:week6_ui_examples/home.dart';

import 'manage_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(
        // child: ManageStore(),
        child: ScreenHome(),
      ),
    );
  }
}
