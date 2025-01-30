import 'package:flutter/material.dart';
import 'package:ostad_flutter_practise1/Ostad/ScreenPage/Formpage.dart';
import 'package:ostad_flutter_practise1/Ostad/ScreenPage/Gridview.dart';
import 'package:ostad_flutter_practise1/Ostad/ScreenPage/Imagepage_Sizer.dart';
import 'package:ostad_flutter_practise1/Ostad/ScreenPage/ListViewbuilder.dart';
import 'package:ostad_flutter_practise1/Ostad/ScreenPage/Listtile.dart';
import 'package:ostad_flutter_practise1/Ostad/ScreenPage/MediaQuery_Wrap.dart';

import 'ScreenPage/Alertbox_Popup.dart';
import 'ScreenPage/FractionalysizeboxAspectRatio.dart';

class Allbutton extends StatelessWidget {
  const Allbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
          direction: Axis.vertical,
        children: [
          Flexible(
            //flex: 1,
              child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.black,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Listtile()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("This is ListTile and Switch page"),
                        Icon(Icons.arrow_circle_left,size: 35,),
                      ],
                    ),
                ),
              )
          ),
          Flexible(
              //flex: 1,
              child: Container(
                width: double.infinity,
                  height: 150,
                color: Colors.green,
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Listviewbuilder()));
                    }, 
                    child: const Center(
                        child: Text("This is (TextButton) ListViewBuilder",
                          style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold,),
                        ),
                    ),
                ),
              ),
          ),
          Flexible(
              //flex: 1,
              child: Container(
                  width: double.infinity,
                  height: 150,
                color: Colors.blue,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Formpage()));
                  },
                  child: const Center(child: Text("This is Gesture Detector & Form page",
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,),
                  ),
                  ),
                )
              ),
          ),
          Flexible(
              //flex: 1,
              child: Container(
                  width: double.infinity,
                  height: 150,
                color: Colors.white,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Gridview()));
                  },
                  
                  child: const Center(child: Text("This is InkWell & GridView page",
                    style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
                  ),
                  ),
                )
              )
          ),
          Flexible(
            //flex: 1,
              child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.redAccent,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MediaQuery_Wrap()));
                    },

                    child: const Center(child: Text("This is MediaQuery & Wrap with Chip page",
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
                    ),
                    ),
                  )
              )
          ),
          Flexible(
            //flex: 1,
              child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.deepPurpleAccent,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>FractionalysizeboxAspectRatio()));
                    },

                    child: const Center(child: Text("This is Fractionally sized box, aspect ratio & Stack page",
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
                    ),
                    ),
                  )
              )
          ),
          Flexible(
            //flex: 1,
              child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.deepPurple,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Imagepage()));
                    },

                    child: const Center(child: Text("This is Image & Sizer Package page ",
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
                    ),
                    ),
                  )
              )
          ),
          Flexible(
            //flex: 1,
              child: Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.cyan,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Alertbox_Popup()));
                    },

                    child: const Center(child: Text("This is Alert Dialog & Pop-Up Button page ",
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
                    ),
                    ),
                  )
              )
          ),
          //This is iconButton
          Flexible(
              //flex: 1,
              child: Container(
                width: double.infinity,
                height: 150,
                color: Colors.grey,
                child: IconButton(
                  onPressed: (){},
                  iconSize: 50,
                  icon: const Icon(Icons.arrow_circle_down),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
