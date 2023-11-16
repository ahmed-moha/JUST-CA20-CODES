import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LessonSeven extends StatefulWidget {
  const LessonSeven({super.key});

  @override
  State<LessonSeven> createState() => _LessonSevenState();
}

class _LessonSevenState extends State<LessonSeven> {
  String? city;
  String name = "";

  TextEditingController nameController = TextEditingController();
  List<String> cities = ["Mogadishu", "Nairobi", "London"];

  WebViewController controller = WebViewController();
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://pub.dev/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("LessonSeven"),
      //   actions: [
      //     PopupMenuButton(
      //       itemBuilder: (_) => [
      //         PopupMenuItem(
      //           onTap: () {
      //             print("SETTINGS");
      //           },
      //           child: const Text("Settings"),
      //         ),
      //         const PopupMenuItem(
      //           child: Text("Log out"),
      //         )
      //       ],
      //     ),
      //   ],
      // ),


      body: WebViewWidget(controller: controller),

      // body: Column(
      //   children: [
      //     const SizedBox(
      //       height: 50,
      //     ),
      //     Container(
      //       margin: const EdgeInsets.symmetric(horizontal: 16),
      //       padding: const EdgeInsets.symmetric(horizontal: 16),
      //       decoration: BoxDecoration(
      //           color: Colors.black12, borderRadius: BorderRadius.circular(8)),
      //       child: DropdownButton(
      //         underline: const SizedBox(),
      //         isExpanded: true,
      //         hint: const Text("Choose city"),
      //         value: city,
      //         items: cities
      //             .map(
      //               (e) => DropdownMenuItem(
      //                 value: e,
      //                 child: Text(e),
      //               ),
      //             )
      //             .toList(),
      //         onChanged: (value) {
      //           print(value);
      //           city = value;
      //           setState(() {});
      //         },
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 30,
      //     ),
      //     TextField(
      //       obscureText: true,
      //       controller: nameController,

      //       // onChanged: (value) {
      //       //   print(value);
      //       //   name = value;
      //       //   setState(() {});
      //       // },
      //       keyboardType: TextInputType.emailAddress,
      //       decoration: const InputDecoration(
      //           // hintText: "Enter your name",
      //           helperText: "Enter your name",
      //           prefixIcon: Icon(Icons.person),
      //           // label: Text("Enter your name"),
      //           suffixIcon: Icon(Icons.remove_red_eye)),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         print(nameController.text);

      //         nameController.clear();
      //       },
      //       child: const Text("Click me"),
      //     ),
      //   ],
      // ),
    );
  }
}
