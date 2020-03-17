import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  static String route = "game";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Game Screen"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(child: Image.asset("assets/undraw.co/cards.png")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Back to Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.popUntil(
                    context,
                    (route) => route.isFirst,
                  );
                },
              ),
            )
          ],
        ));
  }
}
