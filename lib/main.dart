import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:new_app/ui_helper/util.dart';
// import 'package:new_app/widgets/rounded_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: MyHomePage(title: 'Contact page'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return MyHomeState();
  }

}

class MyHomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
   return Container();
  }

}

