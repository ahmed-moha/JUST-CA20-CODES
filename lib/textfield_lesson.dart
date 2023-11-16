import 'package:flutter/material.dart';

class TextFielLesson extends StatefulWidget {
  const TextFielLesson({super.key});

  @override
  State<TextFielLesson> createState() => _TextFielLessonState();
}

class _TextFielLessonState extends State<TextFielLesson> {
    TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Textfield"),
      ),
      body: Column(
        children: [
     const SizedBox(
            height: 30,
          ),
          TextField(
            obscureText: true,
            controller: nameController,

            // onChanged: (value) {
            //   print(value);
            //   name = value;
            //   setState(() {});
            // },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                // hintText: "Enter your name",
                helperText: "Enter your name",
                prefixIcon: Icon(Icons.person),
                // label: Text("Enter your name"),
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
          ElevatedButton(
            onPressed: () {
              print(nameController.text);

              nameController.clear();
            },
            child: const Text("Click me"),
          ),
        ],
      ),
    );
  }
}