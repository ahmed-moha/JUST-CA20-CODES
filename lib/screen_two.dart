import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key,  this.name});
final String? name;
  @override
  Widget build(BuildContext context) {
var data=ModalRoute.of(context)?.settings.arguments as Map;


    return Scaffold(
      appBar: AppBar(
      
        title:  Text("${data["age"]} ${data["name"]}" ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Back"),
        ),
      ),
    );
  }
}