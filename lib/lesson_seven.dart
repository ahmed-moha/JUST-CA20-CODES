import 'package:flutter/material.dart';

class LessonSeven extends StatefulWidget {
  const LessonSeven({super.key});

  @override
  State<LessonSeven> createState() => _LessonSevenState();
}

class _LessonSevenState extends State<LessonSeven> {
  String? city;
  List<String> cities = ["Mogadishu", "Nairobi", "London"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson Seven"),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
               PopupMenuItem(
                child: const Text("Settings"),
                onTap: (){
                  print("SETTINGS");
                },
              ),
               const PopupMenuItem(
                child: Text("Profile"),
              ),
               const PopupMenuItem(
                child: Text("Exit"),
              )
            ];
          })
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(8)),
            child: DropdownButton(
              underline: const SizedBox(),
              isExpanded: true,
              value: city,
              hint: const Text("Choose city"),
              items: cities
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                print(value);
                city = value;
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
