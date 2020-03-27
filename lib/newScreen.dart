import "package:flutter/material.dart";
import 'package:yoga_ui/third_screen.dart';
import 'package:yoga_ui/yoga_detail.dart';

class NewYogaDetailPage extends StatefulWidget {
  @override
  _NewYogaDetailPageState createState() => _NewYogaDetailPageState();
}

class _NewYogaDetailPageState extends State<NewYogaDetailPage> {
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
        margin: EdgeInsets.all(10),
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(yoga.imageUrl), fit: BoxFit.fill)),
              ),
            ),
            SizedBox(width: 17),
            Expanded(
              flex: 3,
              child: Container(
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Text(
                        yoga.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.pink[200],
                          ),
                          SizedBox(width: 5),
                          Text(yoga.date),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.view_comfy,
                            color: Colors.pink[200],
                          ),
                          SizedBox(width: 5),
                          Text(yoga.complete),
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
          SizedBox(height: 20),
          Column(
            children: yogalist.asMap().entries.map(
              (MapEntry map) {
                return getYogalist(map.value);
              },
            ).toList(),
          ),
        ],
      )),
    );
  }
}
