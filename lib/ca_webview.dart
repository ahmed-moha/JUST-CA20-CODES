import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Cawebview extends StatefulWidget {
  const Cawebview({super.key});

  @override
  State<Cawebview> createState() => _CawebviewState();
}

class _CawebviewState extends State<Cawebview> {
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
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    print("DISPOSE CALLED");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Webview"),
      // ),
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }
}
