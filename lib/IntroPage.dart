import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:new_app/Color.dart';
// import 'package:new_app/main.dart';
// import 'package:blur/blur.dart';

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
                  image: const AssetImage(
                    'assets/images/final3.jpg',
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.brown.withOpacity(1),
                    BlendMode.hardLight,
                  ))),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: const Text(""),
          ),
        ),
        Positioned(
          top: 120,
          right: 100,
          child: Container(
              width: 180,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/all.png'),
                  fit: BoxFit.cover
                ),
              )),
        ),
        Positioned(
          top: 350,
          right: 30,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Unleash your imagination at \n Lit Lounge",
                  style: GoogleFonts.varela(
                    fontSize: 25,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        Positioned(
          top: 250,
          right: 70,
          child: Text("LitLounge",
              style: GoogleFonts.pacifico(
                fontSize: 60,
                color: Colors.white,
              )),
        ),
        Positioned(
          top: 450,
            right: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21)
                )
              ),
          onPressed: () {},
          child: Text("Start Reading With us now" , style: GoogleFonts.varela(
            fontSize: 20 ,
          ),),
        ))
      ],
    ));
  }
}
