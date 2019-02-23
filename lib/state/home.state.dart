import 'package:calculator/screen/home.dart';
import 'package:flutter/material.dart';

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculator',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(40),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Output: ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold)),
              getTextFields("Enter Number 1"),
              getTextFields("Enter Number 2"),
              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  getAccountButton("+"),
                  getAccountButton("-")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  getAccountButton("*"),
                  getAccountButton("/")
                ],
              )
            ],
          ))),
    );
  }

  TextField getTextFields(String placeFolder) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(hintText: placeFolder),
    );
  }

  MaterialButton getAccountButton(String name) {
    return MaterialButton(
      child: Text(name),
      onPressed: () {},
      color: Colors.teal,
      textTheme: ButtonTextTheme.primary,
    );
  }
}
