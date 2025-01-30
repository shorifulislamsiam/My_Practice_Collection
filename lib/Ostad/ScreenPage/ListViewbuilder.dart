import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  const Listviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is List View Builder page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Flex(
        direction: Axis.vertical,
        children:[
          Flexible(
            child: ListView.builder(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 0,right: 5),
                    child: Container(
                      //padding: EdgeInsets.all(10),
                      height: 50,
                      width: 150,
                      color: Colors.blue,
                      child: const Text(
                          "This is one"),
                    ),
                  );
                }),
          ),
          //
          //
          //List View Builder
          const Flexible(child: Text("this is ListView.builder"),),
          Flexible(
              child: ListView.separated(
                  separatorBuilder: (context,index){
                    return const SizedBox(height: 5,width: 5,);
                  },
                  itemCount: 4,
                itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.green,
                        child: const Text("This is ListviewBuilder"),
                      ),
                    );
                },
              ),
          ),
          //
          //
          //List View Builder
          const Flexible(child: Text("this is ListView.custom"),),
          Flexible(
              child: ListView.custom(
                //scrollDirection: Axis.horizontal,
                  childrenDelegate: SliverChildBuilderDelegate((context,index){
                    return const ListTile(

                      title: Text("This is List View Custom "),
                    );

                  },
                    childCount: 5,
                  ),
              ),
          ),
        ]
      ),
    );
  }
}
