import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              padding: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomAppBar(),
                  _Header()
                ],
              ),
            ),
          ),
          BuyButtom()
        ],
      )
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 45.0),
          Text('Shopping Car', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          Text('By MR76', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18.0))
        ],
      ),
    );
  }
} 

class BuyButtom extends StatelessWidget {
  const BuyButtom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              
              children: <Widget>[
                Text('Buy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0)),
                Spacer(),
                Icon(FontAwesomeIcons.arrowRight, color: Colors.white)
              ],
            ),
            width: size.width * 0.5,
            height: 75.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0))
            ),
          ),
        ),
      ],
    );
  }
}