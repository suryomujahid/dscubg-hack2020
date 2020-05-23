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
      body: Container(
        color: Color.fromRGBO(19, 21, 23, 1.0),
        child: ListView(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 100.0),
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
            Container(

                width: double.infinity,
                child: ProjectSection()),
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
                  color: Colors.black,
                  child: Footer()),
            ),
          ],
        ),
      ),
    );
  }
}
