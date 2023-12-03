import 'package:flutter/material.dart';

class LessonFive extends StatefulWidget {
  const LessonFive({super.key});

  @override
  State<LessonFive> createState() => _LessonFiveState();
}

class _LessonFiveState extends State<LessonFive> {
  int count = 1;
  Color color = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    // print("WAA LASOO GALAY");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: const Text("Lesson Five"),
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 200,
            color: color,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: TextButton(
                  child: const Text("Yellow"),
                  onPressed: () {
                    color = Colors.yellow;
                    setState(() {});
                  },
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.pink[300],
                child: TextButton(
                  onPressed: () {
                    color = Colors.pink[200]!;
                    setState(() {});
                  },
                  child: const Text("Pink"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green[200],
                child: TextButton(
                  onPressed: () {
                    color = Colors.green[200]!;
                    setState(() {});
                  },
                  child: const Text("Green"),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(microseconds: 300),
                  backgroundColor: Colors.green,
                  content: Text("Hello CA208"),
                ),
              );
            },
            child: const Text("show snackbar"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
