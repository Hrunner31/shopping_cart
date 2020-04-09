import 'package:flutter/material.dart';
import 'package:shopping_car/src/widgets/app_bar_widget.dart';

import 'package:shopping_car/src/widgets/fondo_pantalla_widgets.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FondoCircular(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CustomAppBar()
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}