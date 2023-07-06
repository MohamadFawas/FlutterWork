import 'package:flutter/material.dart';

import 'learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return LearnFlutterPage();
                },
              ),
            );
            //debugPrint('Elevated Action Button');
          },
          child: Text('Learn flutter')),
    );
  }
}
