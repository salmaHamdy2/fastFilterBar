
import 'package:filterbar/filter.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Filterbar(),
    );
  }
}
