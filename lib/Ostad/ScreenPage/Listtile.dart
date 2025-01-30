import 'package:flutter/material.dart';

class Listtile extends StatefulWidget {
  const Listtile({super.key});

  @override
  State<Listtile> createState() => _ListtileState();
}

class _ListtileState extends State<Listtile> {
  bool isHover=false;
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "This is ListTile Example",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body:   Column(
          children: [
            const SizedBox(width: 10,),
            const Divider(thickness: 10,indent: 15,endIndent: 15,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListTile(
                tileColor: isHover ? Colors.green : Colors.blue,//Colors.blue,
                title: const Text("Hello"),
                titleAlignment: ListTileTitleAlignment.center,
                subtitle: const Text("This is Subtitle"),
                trailing: const Icon(Icons.delete),
                leading: const Icon(Icons.add),
              ),
            ),

            const Divider(thickness: 10,indent: 15,endIndent: 15,),
            const SizedBox(height: 10,),
            const Divider(thickness: 10,indent: 15,endIndent: 15,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListTile(
                tileColor: isHover ? Colors.green : Colors.blue,//Colors.blue,
                title: const Text("Hello"),
                titleAlignment: ListTileTitleAlignment.center,
                subtitle: const Text("This is Subtitle"),
                trailing: const Icon(Icons.delete),
                leading: const Icon(Icons.add),
              ),
            ),
            const Divider(thickness: 10,indent: 15,endIndent: 15,),
            Switch(value: isHover, onChanged: (value){
              setState(() {
               isHover =value;
              }
              );
              }
            ),
          ],
        ),
      ),
    );
  }
}
