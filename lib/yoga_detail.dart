import 'package:flutter/material.dart';

class Yoga {
  String imageUrl;
  String name;
  String date;
  String complete;

  Yoga(
      {@required this.complete,
      @required this.date,
      @required this.imageUrl,
      @required this.name});
}

List<Yoga> yogalist=[
  Yoga(complete: "1 week complete", date: "20 March", imageUrl: "assets/images/yoga6.jpeg", name: "Weight Lose"),
    Yoga(complete: "2 week complete", date: "21 March", imageUrl: "assets/images/yoga7.jpeg", name: "Running"),
  Yoga(complete: "3 week complete", date: "22 March", imageUrl: "assets/images/yoga11.jpeg", name: "Walking"),
  Yoga(complete: "1 week complete", date: "10 March", imageUrl: "assets/images/yoga11.jpeg", name: "Jogging"),
  Yoga(complete: "5 week complete", date: "18 March", imageUrl: "assets/images/yoga10.jpeg", name: "Gyming"),

];
