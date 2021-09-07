import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BooksTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            String? id = '123';
            context.router.pushNamed('/books/$id');
          },
          child: ListTile(
            title: Text('Código limpo'),
            subtitle: Text('Livro obrigado para todos os dev'),
          ),
        ),
        SizedBox(height: 10),
        ListTile(
          title: Text('Arquitetura limpa'),
          subtitle: Text(
              'Aprenda as melhores práticas de construçao de um software que preste'),
        ),
        ListTile(
          title: Text('Os segredos da mente milionária'),
          subtitle: Text('Vai gastar dinheiro mesmo?'),
        ),
      ],
    );
  }
}
