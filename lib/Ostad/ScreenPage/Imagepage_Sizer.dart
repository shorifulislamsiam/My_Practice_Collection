import 'package:flutter/material.dart';
import 'package:ostad_flutter_practise1/main.dart';
import 'package:sizer/sizer.dart';

class Imagepage extends StatelessWidget {
  const Imagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Page & Sizer"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text("These are Network Image",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //width: double.infinity,
                    height: 45.h,
                    width: 45.w,
                    child: Image.network("https://wallpapercave.com/wp/wp6869861.jpg"),
                  ),
                ),
                Container(
                  height: 45.h,
                  width: 45.w,
                  child: Image.network("https://wallpapercave.com/wp/wp6869861.jpg"),
                ),
              ],
            ),
            Text("This are Asset Image",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Row(
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
                  child: Image.asset("assets/images/book.jpg"),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 200,
                      child: Image.asset("assets/images/electronic.jpg"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
