import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ostad_flutter_practise1/Ostad/Allbutton.dart';
import 'dart:ui' as ui;

import 'package:ostad_flutter_practise1/Ostad/Texteditingpage.dart';
import 'package:sizer/sizer.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientaion, screenType){
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              //color: Colors.red,
              backgroundColor: Colors.blue,
              centerTitle: true,
              //foregroundColor: Colors.blue
            ),
          ),
          home: MyHomePage(),
          debugShowCheckedModeBanner: false,
        );
      }
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Title"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //Show the use of Flex-start
            Flex(direction: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Text("This is Flex"),
                    Text("This is Flex"),
                    Text("This is Flex"),
                    Text("This is Flex"),
                  ],
                ),
                Row(
                  children: [
                    Text("This is Flex"),
                    Text("This is Flex"),
                    Text("This is Flex"),
                    Text("This is Flex"),
                  ],
                )

              ],
            ),
            //Show the use of Flex-End
            //
            //To show TextStyle- Start
            Container(
              // height: 40,
              // width: 15,
              child: Text("Hello World! From Bangladesh",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader=ui.Gradient.linear(
                    const Offset(0, 60),
                    const Offset(150, 20),
                    <Color>[Colors.red, Colors.green],
                  ),
                letterSpacing: 10.2,
                backgroundColor: Colors.white,
                textBaseline: TextBaseline.alphabetic,
                overflow: TextOverflow.visible,
                inherit: false,
                //height: 5,
              ),),
            ),
            Container(
              // height: 40,
              // width: 15,
              child: Text("Hello World! From Bangladesh",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader=ui.Gradient.linear(
                    const Offset(0, 60),
                    const Offset(150, 20),
                    <Color>[Colors.red, Colors.green],
                  ),
                letterSpacing: 10.2,
                backgroundColor: Colors.white,
                textBaseline: TextBaseline.alphabetic,
                overflow: TextOverflow.visible,
                inherit: false,
                //height: 5,
              ),
              ),
            ),
            //To show TextStyle- End
            //
            Divider(
              color: Colors.red,
              thickness: 10,
              height: 15,
              indent: 2.5,
            ),
            //To show the Expanded widget under Flex Widget-Start
            Container(
              height: 140,
              width: 140,
              child: Flex(direction: Axis.vertical,
                children: [
                  Text("This is a flex",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing:2.5,
                    ),
                  ),
                  Expanded(flex: 2,child: Container(color: Colors.green,)),
                  Expanded(flex: 1,child: Container(color: Colors.red,),),
                  Expanded(flex: 2,child: Container(color: Colors.green,))
                ],
              ),
            ),

            Divider(
              thickness: 10,
              color: Colors.red,
            ),
            //To show the Expanded widget under Flex Widget-Start
            //
            //To Show Flexible under Row-Start
            Container(
              height: 140,
              width: 140,
              child: Flexible(
                child: Column(
                  children: [
                    Text("This is Flexible",),
                    Flexible(flex: 2,child: Container(color: Colors.green,)),
                    Flexible(flex: 2,child: Container(color: Colors.red,)),
                    Flexible(flex: 2,child: Container(color: Colors.green,))
                  ],
                ),
              ),
            ),
            Flex(direction: Axis.vertical,
              children: [
                MouseRegion(
                  onEnter: (_) => setState(() => isHovered = true),
                  onExit: (_) => setState(() => isHovered = false),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.blue; // Hover color
                        }
                        return Colors.grey; // Default color
                      }),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TextEditingPage()));
                    },
                    child: Icon(Icons.arrow_right_alt_sharp, color: Colors.black),
                  ),
                ),
                Container(

                  color: Colors.blue,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Allbutton()));
                      },

                      child: Icon(Icons.arrow_right_alt_sharp)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
