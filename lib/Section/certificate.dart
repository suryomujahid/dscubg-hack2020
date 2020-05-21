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
                color: Colors.blueGrey[900])),
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

Card SertCard(String title, String imgLoc) {
  return Card(
    color: Colors.grey[200],
      elevation: 5,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image(
          image: AssetImage(imgLoc),
          width: 375.0,
        ),
        Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0, color: Colors.blueGrey[800],)),
      ]));
}
