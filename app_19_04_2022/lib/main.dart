// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:app_19_04_2022/inputpage.dart';

void main() => runApp(BMICalculator());

// ignore: use_key_in_widget_constructors
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF222222),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 0, 23, 138),
        ),
        // ignore: deprecated_member_use
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF222222),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      home: InputPage(),
    );
  }
}
