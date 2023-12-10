import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonTen extends StatefulWidget {
  const LessonTen({super.key});

  @override
  State<LessonTen> createState() => _LessonTenState();
}

class _LessonTenState extends State<LessonTen> {
  String name = "";

  TextEditingController name2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson 10"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            // padding: const EdgeInsets.only(
            //   left: 16,
            //   top: 5,
            //   bottom: 5
            // ),
            // decoration:  BoxDecoration(
            //   color:Colors.grey.shade300 ,
            //   borderRadius: BorderRadius.circular(16)
            // ),
            child: TextField(
              controller: name2,
              onChanged: (value) {
                print(value);
                name = value;
                setState(() {});
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Enter your name",
                  suffixIcon: Icon(Icons.remove_red_eye)
                  // label: Text("Label example")
                  // helperText: "Helper Text",

                  // border: InputBorder.none
                  // focusedBorder: UnderlineInputBorder(
                  //  borderSide: BorderSide(
                  //   color: Colors.red
                  //  )
                  // )
                  // border: OutlineInputBorder(

                  // )
                  ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              onPressed: () {
                print(name2.text);
              },
              child: const Text("Click Me")),
          ElevatedButton(
            onPressed: () {
              name2.clear();
            },
            child: const Text("Clear"),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "HELLO, CA208",
            style: GoogleFonts.raleway(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text("HELLO, CA208"),
                        content: const SingleChildScrollView(
                          child: Column(
                            children: [],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            child: const Text("OK"),
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            child: const Text("CANCEL"),
                          )
                        ],
                      ));
            },
            child: const Text("Show Alert"),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => Padding(
                    padding:  EdgeInsets.only(

                      bottom: MediaQuery.of(context).viewInsets.bottom
                    ),
                    child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 40),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle
                                ), 
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Name",
                                      
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Name",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Name",
                                      border: OutlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                        ),
                  ));
            },
            child: const Text("Show Bottom Sheet"),
          ),
        ],
      ),
    );
  }
}
