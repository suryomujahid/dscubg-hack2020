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
  void _showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 5.0,
              backgroundColor: Colors.transparent,
              child: Container(
                width: 200.0,
                height: 190.0,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(6.0),
                        width: double.infinity,
                        color: Color.fromRGBO(36, 37, 42, 1.0),
                        child: Text(
                          "Bio Data",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(12.0),
                      child: Column(children: [
                        Text(
                            "Full name: Suryo Slamet Mujahid Musyaffa\nBirthday: November 22, 2003\nLocation: Cianjur, Indonesia\nEmail: suryomujahid@gmail.com",
                            style: TextStyle()),
                        FlatButton(
                          color: Colors.red,
                          child: Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ]),
                    ),
                  ],
                ),
              ));
        });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Hello,",
                style:
                    TextStyle(fontSize: 40.0, color: Colors.grey[300])),
            Text("I am Suryo Mujahid",
                style: TextStyle(
                    fontSize: 56.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text(
              "I live in Indonesia, I have a lot of\ninterest on IT especially programming.\nCurrently studying at SMK Wikrama Bogor",
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 20.0,
                color: Colors.grey[350],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            RaisedButton(
              onPressed: () {
                _showAboutDialog(context);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
                  color: Colors.indigoAccent[400],
                  child: Text("More About Me", style: TextStyle(color: Colors.white)),
            ),
                GithubButton(onPressed: () {
                  html.window.open("https://github.com/suryomujahid", "x");
                }),
                LinkedinButton(onPressed: () {
                  html.window.open(
                      "https://www.linkedin.com/in/suryo-mujahid-03b899191/",
                      "x");
                }),
                InstagramButton(onPressed: () {
                  html.window
                      .open("https://www.instagram.com/suryomujahid/", "x");
                }),
                FacebookButton(
                  onPressed: () {
                    html.window
                        .open("https://www.facebook.com/ryo.sm", "x");
                  },
                ),
              ],
            ),
          ]),
          SizedBox(
            width: 100.0,
          ),
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
  void _showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 5.0,
              backgroundColor: Colors.transparent,
              child: Container(
                width: 200.0,
                height: 190.0,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(6.0),
                        width: double.infinity,
                        color: Color.fromRGBO(36, 37, 42, 1.0),
                        child: Text(
                          "Bio Data",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(12.0),
                      child: Column(children: [
                        Text(
                            "Full name: Suryo Slamet Mujahid Musyaffa\nBirthday: November 22, 2003\nLocation: Cianjur, Indonesia\nEmail: suryomujahid@gmail.com",
                            style: TextStyle()),
                        FlatButton(
                          color: Colors.red,
                          child: Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ]),
                    ),
                  ],
                ),
              ));
        });
  }
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text("Hello,",
                style:
                    TextStyle(fontSize: 30.0, color: Colors.grey[200])),
            Text(
              "I am Suryo Mujahid",
              style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Text(
              "I live in Indonesia, I have a lot of\ninterest on IT especially programming.\nCurrently studying at SMK Wikrama Bogor",
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 15.0,
                color: Colors.grey[350],
              ),
              textAlign: TextAlign.center,
            ),
                      RaisedButton(
              onPressed: () {
                _showAboutDialog(context);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
                  color: Colors.indigoAccent[400],
                  child: Text("More About Me", style: TextStyle(color: Colors.white)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GithubButton(onPressed: () {
                  html.window.open("https://github.com/suryomujahid", "x");
                }),
                LinkedinButton(onPressed: () {
                  html.window.open(
                      "https://www.linkedin.com/in/suryo-mujahid-03b899191/",
                      "x");
                }),
                InstagramButton(onPressed: () {
                  html.window
                      .open("https://www.instagram.com/suryomujahid/", "x");
                }),
                FacebookButton(
                  onPressed: () {
                    html.window
                        .open("https://www.facebook.com/ryo.sm", "x");
                  },
                ),
              ],
            )
          ]),
          SizedBox(
            height: 30.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Image.asset(
              'assets/img/me.jpg',
              width: 160.0,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
