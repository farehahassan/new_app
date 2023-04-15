import 'dart:async';

import 'package:flutter/material.dart';

class cross_fadeani extends StatefulWidget{
  const cross_fadeani({super.key});

  @override
  State<StatefulWidget> createState()=> _MyCrossFadeAniState();

}

class _MyCrossFadeAniState extends State<cross_fadeani>{
  @override
  void initState(){
  //   Timer(Duration(seconds : 4) , (){
  // reload();
  //   });
  }

  void reload(){
    setState(() {
      if(isfirst) {
        isfirst = false;
      }
      else
        {
          isfirst = true;
        }
    });
  }
  bool isfirst = true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           AnimatedCrossFade(
             duration: Duration(seconds: 3) ,
             firstChild: Container(
               width: 200,
               height: 200,
               color: Colors.grey.shade400,
             ),
             secondChild: Image(
               image: AssetImage('assets/images/girl.png') , width: 100 , height: 100,
             ) ,
             sizeCurve: Curves.bounceOut
               , crossFadeState: isfirst? CrossFadeState.showFirst : CrossFadeState.showSecond,

           ),
           ElevatedButton(onPressed: (){
             reload();
           }, child: Text("show"))
         ],
       ),
     )
   );
  }

}