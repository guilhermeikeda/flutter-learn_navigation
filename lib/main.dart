import 'package:flutter/material.dart';
import 'package:learn_navigation/routes/book-route-information-parser.dart';
import 'package:learn_navigation/routes/book-router-delegate.dart';

void main() {
  runApp(LearnNavigationApp());
}

class LearnNavigationApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BooksState();
}

class _BooksState extends State<LearnNavigationApp> {
  BookRouterDelegate _routerDelegate = BookRouterDelegate();
  BookRouteInformationParser _routeInformationParser =
      BookRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Books App',
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
