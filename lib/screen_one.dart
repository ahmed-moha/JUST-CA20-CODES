import 'package:ca_201/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ScreenTwo(),
              ),
            );

            Navigator.pushNamed(
              context,
              "screenTwo",
              arguments: {
                "name":"AHMED",
                "age":40
              }
            );

            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => const ScreenTwo(),
            //   ),
            // );

            // Navigator.pushAndRemoveUntil(
            //     context,
            //     MaterialPageRoute(
            //       builder: (_) => const ScreenTwo(),
            //     ),
            //     (route) => false);

            // Navigator.pushNamedAndRemoveUntil(context, "screenTwo", (route) => false);
          },
          child: const Text("Go Screen Two"),
        ),
      ),
    );
  }
}
