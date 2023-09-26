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
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text("Welcome"),
        backgroundColor: Colors.pink,
        actions: const [
          Icon(Icons.person),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.mood)
        ],
      ),
      body: const Center(
        // Si aad usoo galiso sawir adiga oo ka keensanaayo asset-kaaga 👇
        child: Image(
          image: AssetImage("assets/2.jpg"),
        ),

        // Si aad usoo galiso sawir adiga oo ka keensanaayo internet-ka 👇

        // child: Image(
        //   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQndKHvfs7Jp3RVVHd4V-2cUl6nHKfAxRQiLvf1ZUhD_Z5ycB0sKg4vWcobHaz76pvSuPc&usqp=CAU"),
        // ),

        // child: Text(
        //   "Hello, World ",
        //   style: TextStyle(fontSize: 30),
        // ),
      ),
    );
  }
}
