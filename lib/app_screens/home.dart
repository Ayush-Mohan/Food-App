import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0,top: 30.0),
            alignment: Alignment.centerRight,
            color: Colors.indigoAccent,
            child: Column(
              children: <Widget>[
                FoodLogo(),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                  children: <Widget>[
                    style("DRINK    ", 20.0),
                    style("PIZZA    ", 20.0),
                    style("BURGER    ", 20.0),
                    style("SANDWICH    ", 20.0),
                    style("ICE CREAM    ", 20.0),
                    style("CAKE    ", 20.0),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget style(String text, double size) {
    return Text(
      text,
      textDirection: TextDirection.ltr,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: size,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          color: Colors.white),
    );
  }
}

class FoodLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/foodlogo.jpg');
    Image image = Image(
      image: assetImage,
      width: 150.0,
      height: 150.0,
    );
    return Container(
      child: image,
    );
  }
}
