import 'package:flutter/material.dart';

class TextEditingPage extends StatefulWidget {
  const TextEditingPage({super.key});

  @override
  State<TextEditingPage> createState() => _TextEditingPageState();
}

class _TextEditingPageState extends State<TextEditingPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  List<Map<String, String>> _list = [];

  void addList() {
    if (_nameController.text.isNotEmpty && _emailController.text.isNotEmpty) {
      setState(() {
        _list.add({
          "name": _nameController.text,
          "email": _emailController.text,
        });
      });
      print("Added to list: ${_list.length}");
      print("Current list contents: $_list");
      _nameController.clear();
      _emailController.clear();
    }
  }

  void removeList(int index) {
    setState(() {
      _list.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Text Editing Controller",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      label: const Text("Name"),
                      labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      hintText: "Enter Your Name",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.green,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.white,
                          //strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 2,
                    color: Colors.red,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      label: const Text("Email"),
                      labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      hintText: "Enter Your Email",
                      hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.green,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.red,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        addList();
                      },
                      child: const Text("Submit"),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: ListTile(
                      title: Text(_list[index]["name"]!),
                      subtitle: Text(_list[index]["email"]!),
                      trailing: IconButton(
                        onPressed: () {
                          removeList(index);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
