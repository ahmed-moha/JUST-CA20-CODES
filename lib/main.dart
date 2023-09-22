import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       
        body: Center(
          child: Text("Hellow ",style: TextStyle(
            fontSize: 30
          ),),

        ),
      );
  }
}
