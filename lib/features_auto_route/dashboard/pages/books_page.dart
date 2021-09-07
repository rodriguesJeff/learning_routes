import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({@PathParam('id') this.bookId});
  final String? bookId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Text('ID do livro: $bookId'),
      ),
    );
  }
}
