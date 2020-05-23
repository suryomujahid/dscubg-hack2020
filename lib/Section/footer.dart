import 'package:flutter/material.dart';
import 'dart:html' as html;

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Send me a letter!",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20.0),
          ),
          FlatButton(
            onPressed: () {
              html.window.open("mailto:suryomujahid@gmail.com", "x");
            },
            child: Text('suryomujahid@gmail.com',
                style: TextStyle(
                    color: Colors.indigoAccent)),
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.indigoAccent, width: 2.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(height: 40.0),
          Text("Made with ❤️️ by SuryoMujahid", style: TextStyle(color: Colors.grey[300], fontSize: 14.0),)
        ],
      ),
    );
  }
}
