import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/screens/game_screen.dart';

class LobbyScreen extends StatelessWidget {
  static String route = "lobby";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lobby Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            child: Image.asset("assets/undraw.co/arrived.png"),
          ),
          Container(
            child: Card(
              child: Column(
                children: <Widget>[
                  Text(
                    "Wait here till your friends arrive!",
                    style: GoogleFonts.sawarabiGothic(fontSize: 34.0),
                    textAlign: TextAlign.center,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, GameScreen.route);
                    },
                    child: Text(
                      "Start the game!",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
