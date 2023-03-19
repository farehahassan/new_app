
import 'package:flutter/material.dart';
import 'package:new_app/IntroPage.dart';
// import 'package:math_expressions/math_expressions.dart';
// import 'package:new_app/Color.dart';

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
      home: IntroPage(),
    );
  }
}

// First you have to create a stateful-widget , then just right click and covert it into stateful-widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // var input = '';
  // var output ='';
  // var operation ='';
  // var removeInput =false;
  // var biggerOutput = 48.0;
  // onButtonClick(value){
  //   if(value == 'AC'){
  //     input='';
  //     output='';
  //   } else if(value == '<-'){
  //     if(input.isNotEmpty)
  //     input = input.substring(0 , input.length-1);
  //   } else if(value == '='){
  //     var userInput = input;
  //     userInput = input.replaceAll("x", "*");
  //     Parser p = Parser();
  //     Expression expression = p.parse(userInput);
  //     ContextModel cm = ContextModel();
  //     var finalValue = expression.evaluate(EvaluationType.REAL, cm);
  //     output = finalValue.toString();
  //     if(output.endsWith(".0")){
  //       output = output.substring(0 , output.length-2);
  //     }
  //     input = output;
  //     removeInput = true;
  //     biggerOutput = 54;
  //   } else{
  //     input = input +value;
  //     removeInput = false;
  //     biggerOutput = 34;
  //   }
  //   setState(() {
  //
  //   });
  // }

  // var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff124460),
      body: Center(
        child: Container(
            child: Text("Welcome to new page!!!..."  , style:  TextStyle(fontSize: 50, fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }
}