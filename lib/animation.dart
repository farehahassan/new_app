import 'package:flutter/material.dart';

class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<StatefulWidget> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<animation> {

  var _width = 100.0;
  var _height = 200.0;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.orangeAccent
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          width: _width,
            height: _height,
            curve: Curves.bounceOut,
            decoration: myDecor,
            duration: Duration(seconds: 2)
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(onPressed: (){

          if(_width == 100.0 && _height == 200.0){
            var temp = _width;
            _width = _height;
            _height = temp;

            myDecor = BoxDecoration(
              borderRadius: BorderRadius.circular(50),
                    color : Colors.orangeAccent

            );
          }
          else if(_width==200.0 && _height == 100.0 ){
            var temp = _width;
            _width = _height;
            _height = temp;

            myDecor = BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color : Colors.red
            );

          }
          setState(() {

          });
        }, child: Text("Animate"))

      ],
    );
  }
}
