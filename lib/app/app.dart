import 'package:advanced_flutter/presentation/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //private name constructor
  static final MyApp instance = MyApp._internal(); // single instance

  factory MyApp() => instance; // Factory for the class instance
  int intState = 0;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
