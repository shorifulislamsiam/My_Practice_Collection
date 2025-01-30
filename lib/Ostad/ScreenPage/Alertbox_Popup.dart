import 'package:flutter/material.dart';

class Alertbox_Popup extends StatefulWidget {
  const Alertbox_Popup({super.key});

  @override
  State<Alertbox_Popup> createState() => _Alertbox_PopupState();
}

class _Alertbox_PopupState extends State<Alertbox_Popup> {
//-----------------------------------------------------------
  //For Show the Message --Space Start
  MySnackbar(massage , context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(massage)),
    );
  }
  // For Show the Message -- Space End
//============================================================
  // For Show the Alert Dialog -- Space Start
   MyAlerDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alert"),
                content: Text("Do You want to close"),
                actions: [
                  TextButton(onPressed: (){
                    MySnackbar("You are agree", context);
                    Navigator.pop(context);
                  }, child: Text("Yes")),
                  TextButton(onPressed: (){
                    MySnackbar("You are Disagree", context);
                    Navigator.pop(context);
                  },
                      child: Text("No")),
                ],
              ),
          );
        }
    );
  }
  // For Show the Alert Dialog -- Space End
//=====================================================================
  final List<PopupMenuItem> list=[
    PopupMenuItem(child: Icon(Icons.phone),value: 1,),
    PopupMenuItem(child: Icon(Icons.watch),value: 2,),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog & Pop-Up Botton"),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: (){MyAlerDialog(context);},
                  child: Text("Alert Dialog"),
              ),
            ),
          ),

          PopupMenuButton(
            //icon: const Icon(Icons.add),
              itemBuilder: (context){
              return list;
              },
            onSelected: (value){
              if(value == 1){
                MySnackbar("Phone selected", context);
              }else if(value == 2){
                MySnackbar("Watch selected", context);
              }
            },
            position: PopupMenuPosition.under,
          ),

          SizedBox(height: 20,),

        //=====================================================================
          //Alternative way of getting PopUp Menu in Body
          ElevatedButton(
            onPressed: (){
              print("$PopupMenuItem");
              },
              child: PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return ["Option1","Option2","Option3"].map((String choice){
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                  },
                  onSelected: (String value){
                  switch (value){
                    case "Option1":
                      MySnackbar("Option 1 selected", context);
                      break;
                      case "Option2":
                        MySnackbar("Option 2 selected", context);
                        break;
                      case "Option3":
                        MySnackbar("Option3 selected", context);
                        break;
                      default:
                        MySnackbar("Unknown selected", context);
                    }
                  },
                child: Text("Pop Up Button"),
            ),
          ),
//=======================================================================
        ],
      ),
    );
  }
}
