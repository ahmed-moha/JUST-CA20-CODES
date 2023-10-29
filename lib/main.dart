import 'package:ca_201/ca_webview.dart';
import 'package:ca_201/lesson_five.dart';
import 'package:ca_201/lesson_four.dart';
import 'package:ca_201/lesson_seven.dart';
import 'package:ca_201/screen_one.dart';
import 'package:ca_201/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: const Cawebview(),

      routes: {
        "screenOne":(context)=>const ScreenOne(),
        "screenTwo":(context)=>const ScreenTwo()
      },
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
          title: const Text("Welcome"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 92, 147, 174),
          actions: const [
            Icon(Icons.person),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.mood)
          ],
        ),
        body: Container(
          // width: double.maxFinite,
          // color: Colors.cyan,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 30),
                width: 300,
                height: 65,
                child: ElevatedButton(
                  onLongPress: () {
                    print("LONG PRESS");
                  },
                  onPressed: () {
                    print("Hellow world");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 30,
                      // shape: const StadiumBorder()
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Click Me"),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              IconButton(
                  onPressed: () {
                    print("Icon Button");
                  },
                  icon: const Icon(Icons.add)),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Text Button",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                
                child: const Text("Outline button"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Hellow"),
              ),

              const Card(
                
                child: Text("Hellow CA201"),
              )
              // Container(
              //   width: 100,
              //   height: 100,
              //   color: Colors.red,
              // ),
              // Container(
              //   width: 100,
              //   height: 100,
              //   color: Colors.blue,
              // ),
              // Container(
              //   width: 100,
              //   height: 100,
              //   color: Colors.black,
              // )
            ],
          ),
        ));
  }
}
