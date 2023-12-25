import 'dart:convert';
import 'dart:developer';
import 'package:ca_208/constants.dart';
import 'package:ca_208/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LessonThirteen extends StatefulWidget {
  const LessonThirteen({super.key});

  @override
  State<LessonThirteen> createState() => _LessonThirteenState();
}

class _LessonThirteenState extends State<LessonThirteen> {
  List<UserModel> users = [];

  Future<List<UserModel>> getUsers() async {
    try {
      users.clear();
      var response = await http.get(Uri.parse(endPoint));

      if (response.statusCode == 200) {
        print(response.body);
        var json = jsonDecode(response.body);
        List data = json["data"];
        print(data.length);
        for (int i = 0; i < data.length; i++) {
          users.add(UserModel.fromJson(data[i]));
        }

        return users;
      }
    } catch (e) {
      log(e.toString(), name: "ERROR OCCURED");
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson Thirteen"),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: FutureBuilder<List<UserModel>>(
        future: getUsers(),
        builder: (context, snap) {
          if (snap.hasData) {
            List<UserModel> users = snap.data!;
            return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(
                        users[index].name ?? "",
                      ),
                      subtitle: Text(
                        users[index].phone??""
                      ),

                      leading: Image.network(
                        users[index].photo??""
                      ),
                      trailing: const Column(
                        children: [
                          Icon(Icons.delete),
                          Icon(Icons.edit)
                        ],
                      ),
                    ));
          } else if (snap.hasError) {
            return const Text("ERROR");
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
