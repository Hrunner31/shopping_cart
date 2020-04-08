import 'package:flutter/material.dart';

import 'package:shopping_car/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Car',
      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) => HomePage()
      }
    );
  }
}