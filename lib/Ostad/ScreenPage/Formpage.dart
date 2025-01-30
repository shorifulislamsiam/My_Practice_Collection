import 'package:flutter/material.dart';
import 'package:ostad_flutter_practise1/Ostad/ScreenPage/Todoapp/Todoapp.dart';

class Formpage extends StatefulWidget {
  const Formpage({super.key});

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isSubmited = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    label: Text("Name"),
                    labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    hintText: "Name",
                    hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    prefixText: "Hello",
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(width: 3,color: Colors.blue),
                    //   borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10),
                    //     topRight: Radius.circular(10),
                    //   ),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Name is not empty";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    label: Text("Email"),
                    labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(10),
                      //     topRight: Radius.circular(10),
                      //   ),
                      // ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3,color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3,color: Colors.green),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  validator: (value){
                    if(value == null || value!.isEmpty){
                      return "Email can not empty";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(10),
                    //     topRight: Radius.circular(10),
                    //   ),
                    // ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3,color: Colors.yellow),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3,color: Colors.green),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Empty Email is not null";
                    }
                    return null;
                  },
                ),
                //Spacer(),
                const SizedBox(height: 10,),
                 SizedBox(
                  //height: 40,
                  //width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        //isSubmited = true;
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Todoapp()));
                      }else(e){
                        print(e);
                      };
                      _nameController.clear();
                      _emailController.clear();
                      _passwordController.clear();
                    },
                    child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
                const Divider(thickness: 5,
                ),

              ],
            ),

        ),
      ),
    );
  }
}
