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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcdb4db),
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text("Welcome"),
        centerTitle: true,
        actions: const [
          Icon(Icons.person),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.sports_football)
        ],
      ),
      body: const Center(
          child: Image(
        image: AssetImage("assets/2.jpeg"),
      )
          //   image: NetworkImage(
          //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_L6zqvKijy3UpsxdVdQO8ygcpUy4yzIh-hQ&usqp=CAU",
          //   ),
          // ),
          // child: Text(
          //   "Hellow World ",
          //   style: TextStyle(
          //     fontSize: 30,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.cyan,
          //   ),
          //   textAlign: TextAlign.justify,
          // ),
          ),
    );
  }
}

String getName() {
  return "";
}
