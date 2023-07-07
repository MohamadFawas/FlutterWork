import 'dart:js_util';

import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  LearnFlutterPage({super.key});
  State<LearnFlutterPage> createState() => _LearnFlutterPage();
}

class _LearnFlutterPage extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
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
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('action');
            },
            icon: Icon(Icons.info_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text('testing'),
            Image.asset('images/pecok.jpg'),
            SizedBox(
              height: 75,
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint('elevated Button');
              },
              child: Text('Elevated Button'),
            ),

            OutlinedButton(
              onPressed: () {
                debugPrint('outline Button');
              },
              child: Text('outline Button'),
            ),

            TextButton(
              onPressed: () {
                debugPrint('TextButton');
              },
              child: Text('TextButton'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row ');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('Row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772240_1280.png'),
          ],
        ),
      ),
    );
  }
}
