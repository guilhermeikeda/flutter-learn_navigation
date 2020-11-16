import 'package:flutter/material.dart';
import 'package:learn_navigation/models/book.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  BookDetailScreen({@required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (book != null) ...[
              Text(book.title, style: Theme.of(context).textTheme.headline6),
              Text(book.author, style: Theme.of(context).textTheme.subtitle1)
            ]
          ],
        ),
      ),
    );
  }
}
