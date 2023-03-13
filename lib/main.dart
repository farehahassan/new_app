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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 300,
             decoration: const BoxDecoration(
               gradient: LinearGradient(
                 colors: [
                   Color(0x799ee8d5) , Color(0xffffffff) , Color(0xffffffff)
                 ],
                 begin: FractionalOffset(0.4, 0.0 ),
                end: FractionalOffset(0.9, 0.2)
               )
             ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 200,
                height: 300,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0x799ee8d5) , Color(0xffffffff) , Color(0xffffffff),
                        ],
                        begin: FractionalOffset(0.9, 0.0 ),
                      end: FractionalOffset(-0.2, 0.3)

                    )
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 350,
                height: 300,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xb8edc9f8) , Color(0xffffffff) , Color(0xffffffff),
                        ],
                        begin: FractionalOffset(0.3, 0.9 ),
                        end: FractionalOffset(0.9, 0.3)

                    )
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 150,
                height: 200,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0x799ee8d5) , Color(0xffffffff) , Color(0xffffffff),
                        ],
                        begin: FractionalOffset(0.7, 0.8 ),
                        end: FractionalOffset(-0.1, 0.3)

                    )
                ),
              ),
            ),
            const Positioned(
              left: 100,
                right: 100,
                child: Image(image: AssetImage('assets/images/LogoWolf.png') , width: 200,)),
            Positioned(
              top: 200, right:315,
              child: Text("Email" , style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade500
              ),),

            ),
            Positioned(
              top: 220,
              right: 43,
              child: Container(
                width: 325,
                height: 100,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 4
                      )
                    ),
                    prefixIcon: Icon(Icons.email_outlined , color: Colors.black,),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 300, right:290,
                child: Text("Password" , style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade500,
                ),),

            ),
            Positioned(
              top: 325,
              right: 43,
              child: Container(
                width: 325,
                height: 100,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 4
                          ),

                      ),

                    prefixIcon: Icon(Icons.lock , color: Colors.black,),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 415,
                right: 160,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff309bd5)
                  ),
                  child: const Text("Sign In"),
                )
            )
          ],
        ),
      )
    );
  }
}
