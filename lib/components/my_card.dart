import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key,  this.title, required this.icon});
final String? title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Container(
            width: 100,
            height: 100,
            decoration:  BoxDecoration(
              // color: Colors.red
              border: Border.all(color: Colors.black)
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Icon(icon),
                const SizedBox(height: 8,),
                Text(title??"")
               ],
            ),
          );
  }
}