import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonFour extends StatefulWidget {
  const LessonFour({super.key});

  @override
  State<LessonFour> createState() => _LessonFourState();
}

class _LessonFourState extends State<LessonFour> {
  int level = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 68, 39),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 68, 39),
        title: const Text("My Card"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3)),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/3.jpeg"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Name",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "ahmed".toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Phone",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "+2526XXXXXXX".toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "E-mail",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.email, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              Text(
                "ahmed@gmail.com".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Work",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.work, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Mobile Dev".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Level",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              Text(
                "$level".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              level++;

              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
          
            backgroundColor: Colors.red,
            onPressed: () {
              if (level > 0) {
                level--;
                setState(() {});
              }
            },
            child: const Icon(CupertinoIcons.minus),
          )
        ],
      ),
    );
  }
}
