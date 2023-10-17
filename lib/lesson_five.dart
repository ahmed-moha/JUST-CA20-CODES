import 'package:flutter/material.dart';

class LessonFive extends StatefulWidget {
  const LessonFive({super.key});

  @override
  State<LessonFive> createState() => _LessonFiveState();
}

class _LessonFiveState extends State<LessonFive> {
  int count = 1;
  Color bgColor = Colors.pink;
  @override
  Widget build(BuildContext context) {
    print(" CALLED");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 250,
            color: bgColor,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {
                  bgColor = Colors.yellow;
                  setState(() {});
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  bgColor = Colors.green[300] ?? bgColor;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green[300],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  bgColor = Colors.blueGrey;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  duration: Duration(milliseconds: 300),
                  content: Text("Success"),
                ),
              );
            },
            child: const Text("Show Snackbar"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        label: const Text("ADD"),
      ),
    );
  }
}
