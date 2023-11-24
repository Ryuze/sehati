import 'package:flutter/material.dart';
import './screen/mainScreen/main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      title: "SEHATi",
      home: const Scaffold(
        body: Center(
          child: MainScreen(),
        ),
      ),
    );
  }
}



