// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:newser/presentation/pages/bottom_nav_page/bottom_nav_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Newser',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavPage(),
    );
  }
}
