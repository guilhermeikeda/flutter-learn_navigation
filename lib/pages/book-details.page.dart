import 'package:flutter/cupertino.dart';
import 'package:learn_navigation/models/book.dart';
import 'package:learn_navigation/screens/book-detail.screen.dart';

class BookDetailsPage extends Page {
  final Book book;

  BookDetailsPage({this.book}) : super(key: ValueKey(book));

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) {
        final tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero);
        final curveTween = CurveTween(curve: Curves.easeInOut);
        return SlideTransition(
            position: animation.drive(curveTween).drive(tween),
            child: BookDetailScreen(book: book));
      },
    );
  }
}
