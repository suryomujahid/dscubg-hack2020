import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HobbiesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(children: [
        SizedBox(height:30.0),
        Text("Hobbies",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                color: Colors.white)),
        SizedBox(height: 28.0),
        Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: [
            hobbies("Sleeping", "assets/img/iSleeping.png"),
            SizedBox(width: 8.0,),
            hobbies("Play Games", "assets/img/iGaming.png"),
            SizedBox(width: 8.0,),
            hobbies("Badminton", "assets/img/iBadminton.png"),
            SizedBox(width: 8.0,),
            hobbies("Illustrating", "assets/img/iPainting.png")
          ],
        ),
        SizedBox(height:10.0),
      ]),
    );
  }
}

Column hobbies(String hobby, String imgHobby) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    ClipRRect(
        borderRadius: BorderRadius.circular(200.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.indigoAccent,
          width: 100.0,
          child: Image(
            image: AssetImage(imgHobby),
            fit: BoxFit.contain,
          ),
        )),
    Text(
      hobby,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),
    ),
  ]);
}
