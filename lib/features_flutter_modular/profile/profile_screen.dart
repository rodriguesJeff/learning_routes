import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:learning_routes/models/user_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user!.name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              user!.name!,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              user!.idade!.toString(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              user!.tel!,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Modular.to.navigate('/');
              },
              child: Text(
                'SAIR',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
