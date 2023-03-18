
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:new_app/Color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: Theme,
      home: MyCalculatorApp(title: 'Contact page'),
    );
  }
}

// First you have to create a stateful-widget , then just right click and covert it into stateful-widget
class MyCalculatorApp extends StatefulWidget {
  const MyCalculatorApp({super.key, required String title});
  @override
  State<MyCalculatorApp> createState() => _MyCalculatorAppState();
}

class _MyCalculatorAppState extends State<MyCalculatorApp> {

  var input = '';
  var output ='';
  var operation ='';
  var removeInput =false;
  var biggerOutput = 48.0;
  onButtonClick(value){
    if(value == 'AC'){
      input='';
      output='';
    } else if(value == '<-'){
      if(input.isNotEmpty)
      input = input.substring(0 , input.length-1);
    } else if(value == '='){
      var userInput = input;
      userInput = input.replaceAll("x", "*");
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var finalValue = expression.evaluate(EvaluationType.REAL, cm);
      output = finalValue.toString();
      if(output.endsWith(".0")){
        output = output.substring(0 , output.length-2);
      }
      input = output;
      removeInput = true;
      biggerOutput = 54;
    } else{
      input = input +value;
      removeInput = false;
      biggerOutput = 34;
    }
    setState(() {

    });
  }

  // var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff124460),
      body: Column(
        children: [
          
          //input area
          
          Expanded(
              child: Container(
                width: double.infinity,
              
                decoration: BoxDecoration(
                  color: signsColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: const EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  [
                    Text(removeInput ? '' : input , style: TextStyle(fontSize: 48, color: Colors.white),),
                    SizedBox(
                     height: 20,
                    ),
                    Text(output , style: TextStyle(fontSize: biggerOutput, color: Colors.grey),),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
          )),
          
          
          
          //buttons area
          
          Row(
            children: [
              button(text: "AC" , textColor: Colors.orangeAccent),
              button(text: "<-" , textColor: Colors.orangeAccent),
              SizedBox(
                width: 100,
              ),
              // button(text: "" , buttonBgColor:  Color(0xff124460)),
              button(text: "/", buttonBgColor: signsColor, textColor: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(text: "9" ),
              button(text: "x", buttonBgColor: signsColor, textColor: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              button(text: "4" ),
              button(text: "5"),
              button(text: "6" ),
              button(text: "-", buttonBgColor: signsColor, textColor: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(text: "+" , buttonBgColor: signsColor, textColor: Colors.orangeAccent),
            ],
          ),
          Row(
            children: [
              button(text: "%" , buttonBgColor: signsColor, textColor: Colors.orangeAccent),
              button(text: "0"),
              button(text: "."),
              button(text: "=" , buttonBgColor: mainOpColor),
            ],
          )
        ],
      ),
    );
  }
  Widget button({
    text , textColor = Colors.white , buttonBgColor = numColor
}){
    return  Expanded(
  child: Container(
  margin: const EdgeInsets.all(8),
  child: ElevatedButton(
  onPressed: () => onButtonClick(text),
  style: ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  ),
  backgroundColor:buttonBgColor,
  padding: const EdgeInsets.all(21),
  ),
  child: Text(
  text,
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , color: textColor),
  ),
  ),
  )
    );
}
}
