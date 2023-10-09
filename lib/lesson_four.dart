import 'package:flutter/material.dart';

class LessonFour extends StatelessWidget {
  const LessonFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff264653),
      appBar: AppBar(
        title: const Text("My Card"),
        centerTitle: true,
        backgroundColor: const Color(0xff264653),
      ),

      // body: Row(

      //   children: [
      //     Expanded(
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //      Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //              ),
      //      Expanded(
      //       flex: 3,
      //        child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.black,
      //                ),
      //      ),

      //   ],
      // ),

      body: Padding(
        padding: const EdgeInsets.only(
          left: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3)),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/3.jpeg",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Name",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Ahmed Mohamed".toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Work",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Mobile Dev".toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "E-mail",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Ahmed@gmail.com".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Phone",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "+256xxxxxxxx".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Level",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.grade,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "56".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
