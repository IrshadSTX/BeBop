import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_5/order.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order in five',
      theme: ThemeData(fontFamily: ' Quicksand'),
      home: Order(),
    );
  }
}
