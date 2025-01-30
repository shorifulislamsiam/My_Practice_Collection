import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is GirdView Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text("this is Grid view builder"),
            Container(
              height: 400,
              width: 450,
              color: Colors.red,
                child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 15,

                      ),
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return
                          Container(
                            alignment: Alignment.center,
                            height: 2,
                            width: 2,
                            color: Colors.blue,
                            child: Text("hello"),
                          );
                      }
                  ),

              ),
            SizedBox(height: 5,),
            DottedLine(
              direction: Axis.horizontal,
              lineThickness: 5,
              dashColor: Colors.black,
              dashLength: 8,
              lineLength: double.infinity,
              dashGapLength: 4,
              dashGapColor: Colors.tealAccent,
            ),
            Text("This is GridView.count"),
            Divider(thickness: 5,indent: 55,endIndent: 55,color: Colors.black,),
            SizedBox(height: 5,),
            Container(
              color: Colors.green,
              height: 400,
              width: 450,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children:
                  List.generate(
                      10,
                      (index){
                        return Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text("hello"),
                        );
                      }
                  )
              ),
            ),
            Text("There are also GridView.extent and GridView.custom"),
            Container(
              height: 400,
              width: 400,
              color: Colors.blue,
              child: GridView.custom(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                        (context, index){
                      return Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        color: Colors.white,
                        child: Text("GridView.custom"),
                      );
                    },
                  childCount: 5,
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
