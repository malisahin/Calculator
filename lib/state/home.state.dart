import 'package:calculator/screen/home.dart';
import 'package:flutter/material.dart';

class HomeState extends State<Home> {
  var number1 = 0, number2 = 0, result = 0;

  final TextEditingController firstInput = TextEditingController(text: "0");
  final TextEditingController secondInput = TextEditingController(text: "0");

  void addition() {
    this.getInputValues();
    setState(() {
      result = number1 + number2;
    });
  }

  void subtract() {
    this.getInputValues();
    setState(() {
      result = number1 - number2;
    });
  }

  void divide() {
    this.getInputValues();
    setState(() {
      result = number2 == 0 ? 0 : number1 ~/ number2;
    });
  }

  void multiply() {
    this.getInputValues();
    setState(() {
      result = number1 * number2;
    });
  }

  void reset() {
    setState(() {
      firstInput.text = "0";
      secondInput.text = "0";
      result = 0;
    });
  }

  void getInputValues() {
    setState(() {
      number1 = int.parse(firstInput.text);
      number2 = int.parse(secondInput.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold();
  }

  Scaffold getScaffold() {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Calculator',
            textAlign: TextAlign.center,
          ),
        ),
        body: getScaffoldBody());
  }

  Container getScaffoldBody() {
    return Container(
        padding: EdgeInsets.all(40),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Output: $result",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold)),
            getTextFields("Enter Number 1", firstInput),
            getTextFields("Enter Number 2", secondInput),
            getPadding(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getAccountButton("+", this.addition),
                getAccountButton("-", this.subtract)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getAccountButton("*", this.multiply),
                getAccountButton("/", this.divide)
              ],
            ),
            getPadding(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("Clear"),
                  onPressed: reset,
                  color: Colors.redAccent,
                  textTheme: ButtonTextTheme.primary,
                )
              ],
            )
          ],
        )));
  }

  TextField getTextFields(
      String placeFolder, TextEditingController textController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(hintText: placeFolder),
      controller: textController,
    );
  }

  MaterialButton getAccountButton(String name, Function onPress) {
    return MaterialButton(
      child: Text(name),
      onPressed: onPress,
      color: Colors.teal,
      textTheme: ButtonTextTheme.primary,
    );
  }

  Padding getPadding() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
    );
  }
}
