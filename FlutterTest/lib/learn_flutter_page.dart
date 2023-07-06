import 'dart:js_util';

import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  LearnFlutterPage({super.key});
  State<LearnFlutterPage> createState() => _LearnFlutterPage();
}

class _LearnFlutterPage extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(children: [
        // Text('testing'),
        Image.asset('images/pecok.jpg'),
        SizedBox(
          height: 75,
        ),
        Divider(
          color: Colors.black,
        ),
        Container(
          color: Colors.blueGrey,
          child: Text(
            'This is a text widget',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey,
          child: Text(
            'This is a ',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
