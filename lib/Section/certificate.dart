import 'package:flutter/material.dart';

class CertSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
          Text("Certificate", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                color: Colors.white)),
        SizedBox(height: 28.0),
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              SertCard("Dicoding Android Pemula",
                  "assets/img/sertAndroid.png"),
              SertCard("Dicoding Dasar Pemrograman Web",
                  "assets/img/sertWeb.png")
            ],
          ),
        SizedBox(height: 80.0),
        ]));
  }
}

Container SertCard(String title, String imgLoc) {
  return Container(
    color: Colors.indigoAccent,
    margin: EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          color: Color.fromRGBO(33, 33, 33, 1.0),
          padding: EdgeInsets.all(12.0),
                  child: Image(
            image: AssetImage(imgLoc),
            width: 370.0,
          ),
        ),
        Text(title, style: TextStyle(fontSize: 16.0, color: Colors.white,)),
      ]));
}
