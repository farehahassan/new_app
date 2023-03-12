import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:new_app/ui_helper/util.dart';
import 'package:new_app/widgets/rounded_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

          // primarySwatch: Colors.blue,
          // textTheme: TextTheme(
          //   headline1: TextStyle(fontWeight: FontWeight.w500 , fontSize: 23),
          //   subtitle1: TextStyle(fontSize: 50 , fontStyle: FontStyle.italic)
          // )
          ),
      home: const MyHomePage(title: 'Contact page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var time = DateTime.now();
    // var colorPicker = [
    //   Colors.green,
    //   Colors.yellow,
    //   Colors.orange,
    //   Colors.pinkAccent,
    //   Colors.purple,
    //   Colors.blueGrey,
    //   Colors.brown,
    //   Colors.grey,
    // ];
    // var emailText = TextEditingController();
    // var passText = TextEditingController();
// var arrNames=["fareha" , "warisha" , "areeba" ,"misbah" , "iman" , "alishba"];
//     var datePicked;
    callBack() {
      print("CLickeddd!!!!!!!!!");
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: RichText(
         text: TextSpan(
           style: TextStyle(
             fontSize: 30,
             color: Colors.grey,
           ),
               children:  <TextSpan>[
                   TextSpan(text: "Hello"),
                 TextSpan(text: " World!" , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , color: Colors.blue)),
            TextSpan(text:" welcome to " ),
                 TextSpan(text: "Flutter" ,  style: TextStyle(fontSize: 45 , fontWeight: FontWeight.bold , color: Colors.blue.shade900))
             ],
         ),
        ),

    );
  }
}
