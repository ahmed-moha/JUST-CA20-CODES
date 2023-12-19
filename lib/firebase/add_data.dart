import 'dart:developer';


import 'package:ca_208/firebase/read_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  final db = FirebaseFirestore.instance;
  bool isLoading = false;
  registerUser() async {
    try {
      isLoading = true;
      setState(() {});
      var user = {"name": name.text, "phone": phone.text, "email": email.text};
      var data = await db.collection("User").add(user);

      log("SUCCEFULLY REGISTERED ${data.id}");
    } catch (e) {
      log(e.toString(), name: "Register User Error");
    } finally {
      isLoading = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Data"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: name,
              decoration: const InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: phone,
              decoration: const InputDecoration(
                  hintText: "Phone", border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: "E-mail", border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () =>registerUser(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child:isLoading?const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  
                ),
              ):  const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
           const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (_)=>const ReadData())),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child:isLoading?const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  
                ),
              ):  const Text(
                "Read Data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
