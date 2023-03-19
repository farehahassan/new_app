
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff124460),
      body: Stack(
        children: [
          // Image(image: 'assets/images/bgBook.jpg')
        ],
      )
    );
  }
}