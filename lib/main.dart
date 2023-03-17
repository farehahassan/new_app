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
      // theme: Theme,
      home: MyHomePage(title: 'Contact page'),
    );
  }
}
/* this is long method and best for practice purpose ....
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

}   */

// First you have to create a stateful-widget , then just right click and covert it into stateful-widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1 = TextEditingController();
  var no2 = TextEditingController();
  var result = "";

  // var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1 ,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        int num1 = int.parse(no1.text.toString());
                        int num2 = int.parse(no2.text.toString());

                        var sum = num1 + num2 ;
                        result = "The sum of $num1 and $num2 is $sum";
                        setState(() {

                        });
                      }, child: Text("Add")),
                      ElevatedButton(onPressed: (){
                        int num1 = int.parse(no1.text.toString());
                        int num2 = int.parse(no2.text.toString());

                        var diff = num1 - num2;
                        result = "The subtraction of $num1 and $num2 is $diff";
                        setState(() {

                        });
                      }, child: Text("Subtract")),
                      ElevatedButton(onPressed: (){
                        int num1 = int.parse(no1.text.toString());
                        int num2 = int.parse(no2.text.toString());

                        var mult = num1*num2;
                        result="The multiplication of $num1 and $num2 is $mult";
                        setState(() {

                        });

                      }, child: Text("multiply")),
                      ElevatedButton(onPressed: (){
                        int num1 = int.parse(no1.text.toString());
                        int num2 = int.parse(no2.text.toString());

                        var div = num1/num2;
                        result="The division of $num1 and $num2 is $div";
                        setState(() {

                        });

                      }, child: Text("divide")),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: Text(result , style: TextStyle(fontSize: 25),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
