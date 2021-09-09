import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning_routes/features_auto_route/router/material_auto_router.gr.dart';

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
            context.router.push(BooksRoute(bookId: id));
          },
          child: ListTile(
            title: Text('Código limpo'),
            subtitle: Text('Livro obrigado para todos os dev'),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {
            String? id = '456';
            context.router.push(BooksRoute(bookId: id));
          },
          child: ListTile(
            title: Text('Arquitetura limpa'),
            subtitle: Text(
                'Aprenda as melhores práticas de construçao de um software que preste'),
          ),
        ),
        InkWell(
          onTap: () {
            String? id = '789';
            context.router.push(BooksRoute(bookId: id));
          },
          child: ListTile(
            title: Text('Os segredos da mente milionária'),
            subtitle: Text('Vai gastar dinheiro mesmo?'),
          ),
        ),
      ],
    );
  }
}
