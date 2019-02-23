import 'package:calculator/screen/home.dart';
import 'package:flutter/material.dart';

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 1"),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter number 2"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("+"),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text("-"),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("*"),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text("/"),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ))),
    );
  }
}
