import 'package:flutter/material.dart';

class LanguagesTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text('Python'),
        ),
        ListTile(
          title: Text('Java'),
        ),
        ListTile(
          title: Text('C++'),
        ),
      ],
    );
  }
}
