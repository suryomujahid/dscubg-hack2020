import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Skills",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
              color: Colors.white)),
      SizedBox(height: 28.0),
      Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        children: [
          skillCard("assets/img/flutter.png", "Flutter"),
          skillCard("assets/img/laravel.png", "Laravel"),
          skillCard("assets/img/html5.png", "HTML5"),
          skillCard("assets/img/css3.png", "CSS3"),
          skillCard("assets/img/kotlin.png", "Kotlin"),
        ],
      )
    ]);
  }
}

Container skillCard(String dataImg, textSk) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
    color: Colors.indigoAccent,
    child: Column(
      children: [
        Container(
          color: Color.fromRGBO(33, 33, 33, 1.0),
            padding: EdgeInsets.all(16.0),
            child: Image(width: 140.0,height: 140.0 , image: AssetImage(dataImg))),
        Text(textSk, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[200]),)
      ],
    ),
  );
}
