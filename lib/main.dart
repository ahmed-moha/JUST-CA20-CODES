
import 'package:ca_208/lesson_eleven.dart';
import 'package:ca_208/lesson_ten.dart';
import 'package:ca_208/lesson_thirteen.dart';
import 'package:ca_208/lesson_twelve.dart';

import 'package:ca_208/screen_one.dart';
import 'package:ca_208/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   const LessonThirteen(),
      theme: ThemeData(
        useMaterial3: false
      ),
      routes: {
        "screenOne":(context)=>const ScreenOne(),
        "screenTwo":(context) => const ScreenTwo()
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

      body: SizedBox(
        // width: 300,
        // color: Colors.cyan,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment:CrossAxisAlignment.stretch ,
          children: [
            ElevatedButton(
              onPressed: () {
                print("HELLO WORLD");
              },
              child: const Text("Click me"),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            TextButton(onPressed: () {}, child: const Text("Text Button")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Icon Button"),
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outline button"))
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
            //   color: Colors.green,
            // )
          ],
        ),
      ),
      // body: Center(
      //   child: Container(
      //     width: 300,
      //     height: 300,
      //     alignment: Alignment.topRight,
      //     padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      //     // padding: const EdgeInsets.only(
      //     //   top: 20,
      //     //   left: 20
      //     // ),
      //     decoration: BoxDecoration(
      //         color: Colors.white,
      //         border: Border.all(
      //           width: 3.0,
      //           color: Colors.red,
      //         ),
      //         // borderRadius: BorderRadius.circular(50),
      //         borderRadius: const BorderRadius.only(
      //           topRight: Radius.circular(50),
      //           bottomLeft: Radius.circular(50),
      //         ),
      //         boxShadow: [
      //           BoxShadow(
      //               blurRadius: 25,
      //               color: Colors.black.withOpacity(0.85),
      //               offset: const Offset(1, 10))
      //         ]),
      //     child: const Text(
      //       "Container",
      //       style: TextStyle(fontSize: 30),
      //     ),
      //   ),
      // ),

     
    );
  }
}

String getName() {
  return "";
}
