import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

import 'dart:html' as html;

class ProjectSection extends StatelessWidget {
  final List<String> titleText = [
    "Assesment Covid",
    "Student Attitude Record",
    "MieIndo",
    "AuthUwu",
    "Quiztoria",
  ];
  final List<String> descText = [
    "CRUD Desktop Application for quick survey/assesment about covid-19",
    "CRUD Desktop Application for record poin/attitude of student by Teacher",
    "UI culinary website about noodle product called MieIndo (Indomie Clone)",
    "UI environment website about Autumn, blog related to Autumn Season",
    "Flutter Application, Quiztoria is about historical quiz game based student path learning",
  ];
  final List<String> imgLocation = [
    "assets/img/prAsesmenCovid.png",
    "assets/img/prAttitudeRecord.png",
    "assets/img/prMieIndo.png",
    "assets/img/prAuthUwu.png",
    "assets/img/prQuiztoria.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60.0,
        ),
        Text("Portofolio",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                color: Colors.white)),
        SizedBox(
          height: 12.0,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: [
            Column(
              children: [
                projectCard(titleText[0], descText[0], imgLocation[0],
                    "https://github.com/suryomujahid/survey-covid19"),
                projectCard(titleText[1], descText[1], imgLocation[1], ""),
                projectCard(titleText[2], descText[2], imgLocation[2],
                    "https://github.com/suryomujahid/MieIndo-Website")
              ],
            ),
            SizedBox(width: 6.0),
            Column(
              children: [
                projectCard(titleText[3], descText[3], imgLocation[3], ""),
                projectCard(titleText[4], descText[4], imgLocation[4], "")
              ],
            )
          ],
        )
      ],
    );
  }
}

Container projectCard(
    String title, String desc, String imgLoc, String linkGithub) {
  return Container(
    margin: EdgeInsets.all(10.0),
      color: Colors.grey[200],
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 905) {
            return Container(
              width: 350,
              color: Colors.grey[800],
              child: Row(
                children: [
                  Image(
                    image: AssetImage(imgLoc),
                    width: 150.0,
                    height: 155.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    color: Colors.grey[800],
                    width: 200.0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            color: Colors.indigoAccent,
                            width: double.infinity,
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                              softWrap: true,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            desc,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[350]),
                            softWrap: true,
                            maxLines: 5,
                          ),
                          Row(
                            children: [
                              Spacer(flex: 3),
                              Spacer(flex: 2),
                              GithubButton(onPressed: () {
                                html.window.open(linkGithub, "x");
                              })
                            ],
                          )
                        ]),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              width: 225,
              height: 350.0,
              color: Colors.grey[800],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(imgLoc),
                    width: 225.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            color: Colors.indigoAccent,
                            width: double.infinity,
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white),
                              softWrap: true,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            desc,
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[350]),
                            softWrap: true,
                            maxLines: 5,
                          ),
                          Row(
                            children: [
                              Spacer(flex: 3),
                              Spacer(flex: 2),
                              GithubButton(onPressed: () {
                                html.window.open(linkGithub, "x");
                              })
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            );
          }
        },
      ));
}
