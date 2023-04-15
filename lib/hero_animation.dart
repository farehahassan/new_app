import 'package:flutter/material.dart';

class hero_animation extends StatefulWidget {
  const hero_animation({super.key});

  @override
  State<StatefulWidget> createState() => _myHeroanimationState();
}

class _myHeroanimationState extends State<hero_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Hero(
            tag: 'background',
            child: Image.asset(
              'assets/images/girl.png',
              width: 200,
              height: 200,
            )),
      ),
    ));
  }
}
