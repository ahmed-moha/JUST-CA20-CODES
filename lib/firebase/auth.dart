import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  register({required String email,required String password}) async {
    try {
      print(email);
      print(password);
      var user = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email, password: password);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Success ${user.user?.email}"),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              e.toString(),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child:  TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: "E-mail", border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child:  TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 65,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () =>register(email: email.text,password: password.text),
              child: const Text("Register"),
            ),
          ),
        ],
      ),
    );
  }
}
