import 'package:calculator/screen/home.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Calculator',
        theme: new ThemeData(primarySwatch: Colors.red),
        home: Home());
  }
}
