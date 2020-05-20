import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
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
              height: 600.0,
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
          SizedBox(height: 26.0,),
          SkillsSection(),
        ],
      ),
    );
  }
}
