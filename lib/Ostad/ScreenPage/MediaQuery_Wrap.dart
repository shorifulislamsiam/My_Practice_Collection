import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaQuery_Wrap extends StatelessWidget {
  const MediaQuery_Wrap({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;

    List<String> _fruit =[
      "Apple","Banana","Cherry","Date","Elephant Apple"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query and Wrap with chip"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: LayoutBuilder(
            builder: (context, constrain){
              if(constrain.maxWidth<=600){
                return Column(
                  children: [
                    Container(
                      height: sizeHeight*0.06,
                      width: sizeWidth*1,
                      color: Colors.blueAccent,
                      child: Text(textAlign: TextAlign.center,
                        "Here we use the media Query",
                        style: TextStyle(color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        direction: Axis.horizontal,
                        children:
                        //_fruit.map((fn)=>Chip(label: Text(fn))).toList(),
                        _fruit.map((item){
                          return Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(4),
                            child: Chip(label: Text(item)),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                );
              }
              else{
                return Center(
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text('2nd screen')),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10,),
                      ],
                    ));
              }
            })
      ),
    );
  }
}
