import 'package:flutter/material.dart';


class ScreenTwo extends StatelessWidget {
  const ScreenTwo({
    super.key,
  });
// final String? name;
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        // leading: const SizedBox(),
        backgroundColor: Colors.blue,
        title: Text(
          data["age"].toString(),
        ),
      ),
      body: const Center(
        
      ),
    );
  }
}
