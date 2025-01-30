import 'package:flutter/material.dart';

class FractionalysizeboxAspectRatio extends StatelessWidget {
  const FractionalysizeboxAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FractionallySizebox & AspectRatio"),
        centerTitle: true,

        //backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 10,),
            const Text("This is Aspect Ratio and FractionallySizeBox",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            AspectRatio(
              aspectRatio: 10/6,
              child: Container(
                //height: 100,
                //width: 100,
                color: Colors.green,
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  heightFactor: 0.7,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),

                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Text("This is FractionallySizeBox",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Container(
              width: 300,
              height: 300,
              color: Colors.lightBlueAccent,
              child: FractionallySizedBox(
                widthFactor: 0.8,
                heightFactor: 0.4,
                alignment: Alignment.center,
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Text("This is FractionallySizeBox",)),
                ),
                ),
              ),


            // Flexible(
            //   child: AspectRatio(
            //     aspectRatio: 10/6,
            //     child: Container(
            //       //height: 100,
            //       //width: 100,
            //       color: Colors.green,
            //       child: Center(
            //         child: Container(
            //           height: 200,
            //           width: 250,
            //           decoration: BoxDecoration(
            //             color: Colors.red,
            //             shape: BoxShape.circle,
            //           ),
            //
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 10,),
            const Text("This is Stack",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Stack(
              children: [
                AspectRatio(
                    aspectRatio: 16/9,
                child: Container(
                  color: Colors.red,
                ),
                ),
                Positioned(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                        ),
                      ),
                    ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 220,
                  bottom: 70,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.black38,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Colors.yellow,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
