import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_app/Color.dart';
import 'package:new_app/main.dart';
import 'package:blur/blur.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/final3.jpg',
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.brown.withOpacity(1),
                      BlendMode.hardLight,
                    ))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Text(""),
            ),
          ),
        ],
      ),
    );
  }
}
