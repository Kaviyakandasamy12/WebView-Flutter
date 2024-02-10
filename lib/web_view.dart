import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String text;
  const WebViewContainer({Key? key, required this.text}) : super(key: key);

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    // Initialize the controller and load the URL
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(widget.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.text),
        backgroundColor: Colors.blueAccent,

      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
