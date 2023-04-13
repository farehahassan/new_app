import 'package:flutter/material.dart';

class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<StatefulWidget> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.purple,
      ),
    );
  }
}
