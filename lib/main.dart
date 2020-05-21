import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:portofolio/Section/certificate.dart';
import 'package:portofolio/Section/footer.dart';
import 'package:portofolio/Section/hobbies.dart';
import 'package:portofolio/Section/project.dart';
import 'package:portofolio/Section/skills.dart';

import 'Section/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Suryo Mujahid',
        home: MainPage(),
        theme: ThemeData(fontFamily: "Lato"));
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                decoration: new BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(36, 37, 42, 1.0),
                    Color.fromRGBO(52, 73, 94, 1.0)
                  ],
                )),
                child: Column(
                  children: [LandingPage()],
                )),
          ),
          SizedBox(
            height: 40.0,
          ),
          SkillsSection(),
          SizedBox(
            height: 40.0,
          ),
          HobbiesSection(),
          SizedBox(
            height: 40.0,
          ),
          ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
                width: double.infinity,
                color: Color.fromRGBO(36, 37, 42, 1.0),
                child: ProjectSection()),
          ),
          ClipPath(
            clipper: WaveClipperOne(flip: true),
            child: Container(
              height: 120.0,
              color: Color.fromRGBO(36, 37, 42, 1.0),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          CertSection(),
          SizedBox(
            height: 40.0,
          ),
          ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Container(
                height: 200,
                color: Color.fromRGBO(36, 37, 42, 1.0),
                child: Footer()),
          ),
        ],
      ),
    );
  }
}
