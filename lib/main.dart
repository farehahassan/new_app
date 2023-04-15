
import 'package:flutter/material.dart';
import 'package:new_app/IntroPage.dart';
import 'package:new_app/animated_op.dart';
import 'package:new_app/animation.dart';
import 'package:new_app/cross_fadeani.dart';
import 'package:new_app/hero_animation.dart';
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
      home:MyHomePage(title: "heh")
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
        body: Container(
          child: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> hero_animation()));},
            child: Hero(
                tag: 'background',
                child: Image.asset(
                  'assets/images/girl.png',
                )),
          ),
        ));
  }
}