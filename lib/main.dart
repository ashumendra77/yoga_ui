import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:yoga_ui/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YogaPage(),
    );
  }
}

class YogaPage extends StatefulWidget {
  @override
  _YogaPageState createState() => _YogaPageState();
}

class _YogaPageState extends State<YogaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //  backgroundColor:Colors.brown,
      //   title:Text("YOGA")
      // ),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 120,
            // width: 250,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 45),
              child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: "Practice every day\n",
                        style: TextStyle(
                            color: Color(0xfff47a7b),
                            fontSize: 29,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: "and share your Results",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal))
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Container(
              height: 350,
              color: Colors.cyan,
              child: Carousel(
                dotVerticalPadding: -20,
                boxFit: BoxFit.fill,
                dotBgColor: Colors.transparent,
                dotIncreasedColor: Colors.pink[300],
                dotColor: Colors.pink[200],
                dotSize: 5,
                dotIncreaseSize: 2,
                dotPosition: DotPosition.bottomCenter,
                images: [
                  AssetImage("assets/images/yoga1.jpg"),
                  AssetImage("assets/images/yoga2.jpg"),
                  AssetImage("assets/images/yoga3.jpg"),
                  AssetImage("assets/images/yoga4.png"),
                  AssetImage("assets/images/yoga5.jpeg")
                ],
              )),
          SizedBox(
            height: 50,
          ),
          Container(
              // color: Colors.amber,
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
                width: 250,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YogaDetailPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  splashColor: Colors.white,
                  color: Color(0xfff47a7b),
                  child: Text(
                    "Sign up with facebook",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ))
        ],
      )),
    );
  }
}