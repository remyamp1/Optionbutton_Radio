import 'package:flutter/material.dart';
import 'package:option_button/checkbox.dart';
import 'package:option_button/multipcheck.dart';
import 'package:option_button/option.dart';
import 'package:option_button/popup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopupExample(),
    );
  }
}
