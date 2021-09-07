import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({required this.userName});
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PERFIL'),
      ),
      body: Center(
        child: Text(
          'Bem vindo $userName!',
        ),
      ),
    );
  }
}
