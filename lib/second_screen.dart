import 'package:flutter/material.dart';
import 'package:yoga_ui/third_screen.dart';
import 'package:yoga_ui/yoga_detail.dart';

class YogaDetailPage extends StatefulWidget {
  @override
  _YogaDetailPageState createState() => _YogaDetailPageState();
}

class _YogaDetailPageState extends State<YogaDetailPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget getYogalist(Yoga yoga) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailYogaPage(),
          ),
        );
      },
      child: Container(
        height: 102,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey[400])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          yoga.imageUrl,
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.only(top: 8.0, left: 4),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          yoga.name,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              color: Colors.pink[200],
                            ),
                            SizedBox(width: 7),
                            Text(yoga.date),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.view_comfy,
                              color: Colors.pink[200],
                            ),
                             SizedBox(width: 7),
                            Text(
                              yoga.complete,
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlue[100],
        key: _scaffoldKey,
      ),
      body: SafeArea(
        child: Container(
          width:double.infinity,
           height:double.infinity,
          child: ListView(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/yoga6.jpeg"),
                  ),
                ),
              ),
              SizedBox(height: 30),
              
              Container(
            // /width: double.infinity,
                child: Column(
                  children: yogalist.asMap().entries.map(
                    (MapEntry map) {
                      return getYogalist(map.value);
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
