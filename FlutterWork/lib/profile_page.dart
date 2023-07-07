import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('item ${(index + 1)}'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.select_all),
            onTap: () {
              debugPrint('item ${(index + 1)} selected');
            },
          );
        });
  }
}
