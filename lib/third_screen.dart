import 'package:flutter/material.dart';

class DetailYogaPage extends StatefulWidget {
  @override
  _DetailYogaPageState createState() => _DetailYogaPageState();
}

class _DetailYogaPageState extends State<DetailYogaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("third Screen")),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    image: DecorationImage(
                        image: AssetImage("assets/images/yoga8.jpeg"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xfffcecf5),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Checkbox(
                        value: true,
                        activeColor: true ? Colors.green : Colors.red,
                        onChanged: (bool value) {}),
                    Text(
                      "\$${10.0} / Month",
                      style: TextStyle(fontSize: 22),
                    ),
                    RaisedButton(
                      onPressed: () => debugPrint("press"),
                      child: Text("Free Trial",
                          style: TextStyle(color: Colors.white)),
                      color: Color(0xfff47a7b),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.all(10),
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xfffef1e9),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Checkbox(
                        value: false,
                        activeColor: true ? Colors.green : Colors.red,
                        onChanged: (bool value) {}),
                    Text(
                      "\$${56.0} / Month",
                      style: TextStyle(fontSize: 22),
                    ),
                    RaisedButton(
                      onPressed: () => debugPrint("press"),
                      child: Text("Free Trial",
                          style: TextStyle(color: Colors.white)),
                      color: Color(0xfff47a7b),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 55,
                width: 290,
                child: RaisedButton(
                  onPressed: () => debugPrint("press"),
                  child: Text(
                    "Purchase",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: Color(0xfff47a7b),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ],
      )),
    );
  }
}
