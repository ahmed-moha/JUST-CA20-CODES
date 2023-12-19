import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadData extends StatefulWidget {
  const ReadData({super.key});

  @override
  State<ReadData> createState() => _ReadDataState();
}

class _ReadDataState extends State<ReadData> {
  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Read Data"),
      ),

      body: StreamBuilder(
        stream: db.collection("User").snapshots(),
        builder: (context, snap) {
          if (snap.hasData) {
            List users = snap.data?.docs ?? [];
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.person),
                title: Text(
                  users[index]["name"],
                  style: const TextStyle(fontSize: 30),
                ),
                subtitle: Text(users[index]["phone"]),
              ),
            );
          } else if (snap.hasError) {
            return const Text("Error Occured");
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),

      // body: FutureBuilder(
      //   future: db.collection("User").get(),
      //   builder: (context, snap) {
      //     if (snap.hasData) {
      //       List users = snap.data!.docs;
      //       return RefreshIndicator(
      //         onRefresh: () async {
      //           setState(() {});
      //         },
      //         child: ListView.builder(
      //           itemCount: users.length,
      //           itemBuilder: (context, index) => ListTile(
      //             leading: const Icon(Icons.person),
      //             title: Text(users[index]["name"]),
      //             subtitle: Text(users[index]["phone"] ?? ""),
      //           ),
      //         ),
      //       );
      //     } else if (snap.hasError) {
      //       return const Text("Error Occured");
      //     } else {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
