import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

// 静的なコンテンツなのでStatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget awsomeIcon = Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(
          height: 50.0,
          width: 50.0,
          child: IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.smile),
              onPressed: () {
                print("Pressed");
              },
              color: color),
        ),
        IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: FaIcon(FontAwesomeIcons.angry),
            onPressed: () {
              print("Pressed");
            },
            color: color),
        IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: FaIcon(FontAwesomeIcons.sadTear),
            onPressed: () {
              print("Pressed");
            }),
        IconButton(
            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
            icon: FaIcon(FontAwesomeIcons.smileWink),
            onPressed: () {
              print("Pressed");
            }),
      ]),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body: Container(
            child: _user == null
                ? _buildGoogleSignInButton()
                : _buildEmotionals()),
      ),
    );
  }
}
