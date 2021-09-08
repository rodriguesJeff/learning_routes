import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:learning_routes/models/user_model.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INFOS SCREEN'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              name!,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed(
                  '/profile',
                  arguments:
                      User(name: 'Jefferson', idade: 21, tel: '4002-8922'),
                );
              },
              child: Text('PERFIL'),
            ),
          ],
        ),
      ),
    );
  }
}
