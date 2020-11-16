import 'package:flutter/material.dart';
import 'package:learn_navigation/models/book.dart';
import 'package:learn_navigation/pages/book-details.page.dart';
import 'package:learn_navigation/screens/books-list.screen.dart';
import 'package:learn_navigation/screens/unknown.screen.dart';

void main() {
  runApp(LearnNavigationApp());
}

class LearnNavigationApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BooksState();
}

class _BooksState extends State<LearnNavigationApp> {
  void initState() {
    super.initState();
  }

  Book _selectedBook;
  bool show404 = false;
  List<Book> books = [
    Book('Stranger in a Strange Land', 'Robert A. Heinlein'),
    Book('Foundation', 'Isaac Asimov'),
    Book('Fahrenheit 451', 'Ray Bradbury'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Navigation App',
      home: Navigator(
          pages: [
            MaterialPage(
              key: ValueKey('BooksListPage'),
              child: BooksListScreen(
                books: books,
                onTapped: _handleBookTapped,
              ),
            ),
            if (show404)
              MaterialPage(key: ValueKey('UnknownPage'), child: UnknownScreen())
            else if (_selectedBook != null)
              BookDetailsPage(book: _selectedBook)
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) {
              return false;
            }

            setState(() {
              _selectedBook = null;
            });

            return true;
          }),
    );
  }

  void _handleBookTapped(Book book) {
    setState(() {
      _selectedBook = book;
    });
  }
}
