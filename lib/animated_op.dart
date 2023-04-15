import 'package:flutter/material.dart';

class animated_op extends StatefulWidget {
  const animated_op({super.key});

  @override
  State<StatefulWidget> createState() => _MyAnimatedOpState();
}

class _MyAnimatedOpState extends State<animated_op> {
  var myOpacity = 1.0;
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
      children: [
          AnimatedOpacity(
            opacity: myOpacity,
            duration: Duration(seconds: 1),
            curve: Curves.easeOutSine,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.black,
            ),
          ),
        ElevatedButton(onPressed: (){
          if(isvisible) {
            myOpacity = 0.3;
            isvisible = false;
          }
          else {
            myOpacity = 1.0;
            isvisible = true;
          }
          setState(() {

          });
        }, child: Text("Click to animate"))
      ],
    ),
        ));
  }
}
