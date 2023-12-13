import 'package:flutter/material.dart';

class LessonTwelve extends StatelessWidget {
  LessonTwelve({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson Twelve"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is required";
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    hintText: "Name", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child:  TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "E-mail is required";
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    hintText: "E-mail", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child:  TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 65,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {

                  if(formKey.currentState?.validate()??false){
                      print("SUCCESS");
                  }
                },
                child: const Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
