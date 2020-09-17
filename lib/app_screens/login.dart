import 'package:flutter/material.dart';
import 'package:food_app/app_screens/home.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  var _formKey = GlobalKey<FormState>();

  final double _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
            key: _formKey,
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
            FieldText("Username", "Please enter username", TextInputType.text),
            FieldText("Email", "Please enter email", TextInputType.emailAddress),
            FieldText("Password", "Please enter password", TextInputType.visiblePassword),
            FieldText("Phone", "Please enter phone number", TextInputType.phone),
            Padding(
              padding: EdgeInsets.only(
                top: _minimumPadding*8,
                bottom: _minimumPadding,
              ),
              child: RaisedButton(
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                color: Colors.indigoAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Text(
                  'Sign UP',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                  textScaleFactor: 1.5,
                ),
                onPressed: (){
                  setState(() {
                   if(_formKey.currentState.validate()){
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => Home()
                       ),
                     );
                   }
                  });
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

  Widget FieldText(String text1, String text2, TextInputType text3){
    bool flag = false;
    if(text1=="Password")
      flag=true;

    return Padding(
        padding: EdgeInsets.only(
          top: _minimumPadding,
          bottom: _minimumPadding,
        ),
        child: TextFormField(
          keyboardType: text3,
          obscureText: flag,
          validator: (String val){
            if(val.isEmpty){
              return text2;
            }
          },
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[350],
              labelText: text1,
              labelStyle: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              // hintText: text2,
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(30.0),
            errorStyle: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey[350])
              ),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey[350])
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Colors.grey[350])
              ),
              focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(color: Colors.grey[350])
              ),
          ),
        ));
  }
}
