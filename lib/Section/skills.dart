import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 905) {
        return DesktopSkills();
      } else if (constraints.maxWidth < 905) {
        return MobileSkills();
      }
    });
  }
}

class MobileSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Skills",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.indigoAccent[400])),
        SizedBox(height: 28.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            skillCard("assets/img/flutter.png", "Flutter"),
            skillCard("assets/img/laravel.png", "Laravel"),
            skillCard("assets/img/html5.png", "HTML5"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            skillCard("assets/img/css3.png", "CSS3"),
            skillCard("assets/img/kotlin.png", "Kotlin"),
          ],
        )
      ],
    );
  }
}

class DesktopSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Skills",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.indigoAccent[400])),
      SizedBox(height: 28.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
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

Card skillCard(String dataImg, textSk) {
  return Card(
    margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
    elevation: 5,
    color: Colors.grey[100],
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.all(4.0),
            child: Image(width: 140.0,height: 140.0 , image: AssetImage(dataImg))),
        Text(textSk, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),)
      ],
    ),
  );
}
