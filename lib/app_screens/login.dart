import 'package:flutter/material.dart';
import 'package:food_app/app_screens/home.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Padding(
          padding: EdgeInsets.all(_minimumPadding*2),
            child: ListView(
          children: <Widget>[
            logoImageAsset(),
            Padding(
                padding: EdgeInsets.only(
                  top: _minimumPadding,
                  bottom: _minimumPadding*8,
                ),
                child: Text(
                    "Sign Up Free Account",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25.0,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                )
            ),
            FieldText("Username", "Enter username"),
            FieldText("Email", "Enter email"),
            FieldText("Password", "Enter password"),
            Padding(
                padding: EdgeInsets.only(
                  top: _minimumPadding,
                  bottom: _minimumPadding,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[350],
                      labelText: 'Phone',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                      ),
                      hintText: 'Enter phone number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                )),
            Padding(
              padding: EdgeInsets.only(
                top: _minimumPadding*5,
                bottom: _minimumPadding,
              ),
              child: RaisedButton(
                color: Colors.deepPurpleAccent,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Text(
                  'Sign UP',
                ),
                onPressed: (){
                  Home();
                },
              ),
            ),
          ],
        )),
      )),
    );
  }

  Widget logoImageAsset() {
    AssetImage assetImage = AssetImage('images/foodlogo.jpg');
    Image image = Image(
      image: assetImage,
      width: 75.0,
      height: 75.0,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }

  Widget FieldText(String text1, String text2){
    return Padding(
        padding: EdgeInsets.only(
          top: _minimumPadding,
          bottom: _minimumPadding,
        ),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[350],
              labelText: text1,
              labelStyle: TextStyle(
                fontSize: 20.0,
              ),
              hintText: text2,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0))),
        ));
  }
}
