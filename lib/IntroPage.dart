import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Color.dart';
import 'package:new_app/main.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context){return MyHomePage(title: '',); } ),);
            },
            child: Text(
              "Next page",
              style: TextStyle(fontSize: 30, color: numColor),
            ),
          ),
        ),
      ),
    );
  }
}
