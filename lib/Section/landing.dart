import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'dart:html' as html;

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopLanding();
        } else if (constraints.maxWidth > 905 && constraints.maxWidth < 1200) {
          return DesktopLanding();
        } else {
          return MobileLanding();
        }
      },
    );
  }
}

class DesktopLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Hello,",
                style:
                    TextStyle(fontSize: 44.0, color: Colors.indigoAccent[400])),
            Text("I am Suryo Mujahid",
                style: TextStyle(
                    fontSize: 56.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent)),
            Text(
              "I live in Indonesia, I have a lot of\ninterest on IT especially programming.\nCurrently studying at SMK Wikrama Bogor",
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            GithubButton(onPressed: (){
              html.window.open("https://github.com/suryomujahid", "x");
            }),
            LinkedinButton(onPressed: (){
              html.window.open("https://www.linkedin.com/in/suryo-mujahid-03b899191/", "x");
            }),
            InstagramButton(onPressed: (){
              html.window.open("https://www.instagram.com/suryomujahid/", "x");
            }),
            TwitterButton(onPressed: (){
              html.window.open("https://www.twitter.com/suryomujahid/", "x");
            },),
            ],)
          ]),
          SizedBox(
            width: 100.0,
          ),
          // CircleAvatar
          //   backgroundImage: AssetImage(
          //     "assets/img/me.jpg",
          //   ),
          //   radius: 20.0,
          // )
          ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Image.asset(
              'assets/img/me.jpg',
              width: 250.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

class MobileLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text("Hello,",
                style:
                    TextStyle(fontSize: 34.0, color: Colors.indigoAccent[400])),
            Text("I am Suryo Mujahid",
                style: TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent)),
            Text(
              "I live in Indonesia, I have a lot of\ninterest on IT especially programming.\nCurrently studying at SMK Wikrama Bogor",
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 15.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            GithubButton(onPressed: (){
              html.window.open("https://github.com/suryomujahid", "x");
            }),
            LinkedinButton(onPressed: (){
              html.window.open("https://www.linkedin.com/in/suryo-mujahid-03b899191/", "x");
            }),
            InstagramButton(onPressed: (){
              html.window.open("https://www.instagram.com/suryomujahid/", "x");
            }),
            TwitterButton(onPressed: (){
              html.window.open("https://www.twitter.com/suryomujahid/", "x");
            },),
            ],)
          ]),
          SizedBox(
            height: 30.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Image.asset(
              'assets/img/me.jpg',
              width: 150.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
