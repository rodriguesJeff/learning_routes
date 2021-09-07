import 'package:flutter/material.dart';

class InfosPage extends StatelessWidget {
  const InfosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('INFORMAÇÕES')),
      body: Center(
        child: Text(
          'Para chegar a essa página não foi necessária a passagem de nenhum parâmetro!',
        ),
      ),
    );
  }
}
