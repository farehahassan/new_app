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

  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('Count : $count'),
            ElevatedButton(onPressed: () {
              setState(() {       //set state is used to show result at our screen whenever screen reloads
                count++;
                print(count);
              });
            }, child: const Text("Increment Counter"))
          ],
        ),
      ),
    );
  }
}
