import 'package:flutter/material.dart';
import 'package:toilet/routes.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toilet',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'toilet',
      ),
      routes: routes
    );
  }
}


