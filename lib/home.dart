import 'package:flutter/material.dart';
import 'package:open_url/web_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open Url'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20.0, 20, 20, 20)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: _urlController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                border: OutlineInputBorder(),
                hintText: 'Enter URL',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              onPressed: () {
                String tex = _urlController.text;
                // print(text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebViewContainer(text: tex,),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
