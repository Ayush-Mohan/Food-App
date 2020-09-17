import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10.0,top: 10.0),
                // height: MediaQuery.of(context).size.height /4.0,
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  color: Colors.indigoAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child:
                        Align(alignment: Alignment(1.0, 0.0), child: FoodLogo())),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Item1("images/Burger.png", "BURGER"),
                            Item1("images/Pizza.jpg", "PIZZA"),
                            Item1("images/Sandwich.png", "SANDWICH"),
                            Item1("images/Rolls.jpg", "ROLLS"),
                            Item1("images/Noodles.jpg", "NOODLES"),
                            Item1("images/IceCream.png", "ICE-CREAM"),
                            Item1("images/Drink.jpg", "DRINK"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Item2("CAKE", Colors.pinkAccent[100]),
                      SizedBox(
                        width: 20.0,
                      ),
                      Item2("PIE", Colors.deepPurpleAccent[100]),
                      SizedBox(
                        width: 20.0,
                      ),
                      Item2("ICE CREAM", Colors.blueAccent[100]),
                      SizedBox(
                        width: 20.0,
                      ),
                      Item2("CANNOLI", Colors.greenAccent),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 30.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Most Popular",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
              ),
              Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Item3(context, "160","images/Pizza2.jpg","Pizza Margherita",4.0),
                        Item3(context, "150", "images/Burger2.jpg", "Burger", 3.0),
                        Item3(context, "100", "images/Noodles2.jpg", "Noodles", 4.0),
                        Item3(context, "180", "images/Rolls2.jpg", "Spring Rolls", 5.0),
                        Item3(context, "120", "images/Sandwich2.jpg", "Grilled Sandwich", 4.0),
                        Item3(context, "200", "images/Cake2.jpg", "Chocolate Cake", 5.0),
                        Item3(context, "170", "images/Pie2.jpeg", "Apple Pie", 4.0),

                      ],
                    ),
                  )
              ),


            ],
          ),
        )
    );
  }

  Widget Item1(String address, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,),
        child: Column(
      children: <Widget>[
        CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(address),
          ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              color: Colors.white),
        )
      ],
    )
    );
  }

  Widget Item2(String text1, Color col){
    return RaisedButton(
      color: col,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)),
      child: Text(
        text1,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onPressed: (){},
    );
  }

  Widget Item3(BuildContext context, String text1, String address, String text2, double rate){
    return Container(
        padding: EdgeInsets.all(10.0),
        // height: 220,
        height: MediaQuery.of(context).size.height/2.4,
        width: MediaQuery.of(context).size.width/1.1,
        child: Card(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[350],
                  width: 2,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 10.0,top: 5.0,right: 10.0,bottom: 5.0),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage("images/UFLogo.jpg"),
                              )),
                          Text(
                            "Urban Flavours",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                text1,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.grey[350],
                  ),
                  Container(
                    child: Image(
                      image: AssetImage(address),
                      // height: MediaQuery.of(context).size.height/3.88,
                      // width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.grey[350],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0,top: 5.0,bottom: 5.0,),
                      child:Align(
                        alignment: Alignment.centerLeft,
                        child:  Text(
                          text2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {
                            },
                            starCount: 5,
                            rating: rate,
                            size: 20.0,
                            isReadOnly:true,
                            defaultIconData: Icons.star,
                            filledIconData: Icons.star,
                            // fullRatedIconData: Icons.blur_off,
                            // halfRatedIconData: Icons.blur_on,
                            color: Colors.yellow,
                            borderColor: Colors.grey,
                            spacing:0.0
                        ),
                      )
                  )
                ],
              )
          ),

        )
    );
  }

}

class FoodLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/foodlogo.jpg');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
    );
  }
}