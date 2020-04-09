import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping_car/src/pages/home_page.dart';
import 'package:shopping_car/src/providers/productos_provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductosProvider()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Car',
        initialRoute: 'home',
        routes: {
          'home' : (BuildContext context) => HomePage()
        }
      ),
    );
  }
}