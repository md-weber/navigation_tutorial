import 'package:flutter/material.dart';
import 'package:landing_page/screens/game_screen.dart';
import 'package:landing_page/screens/lobby_screen.dart';
import 'package:landing_page/screens/login_screen.dart';

Map<String, WidgetBuilder> getRouteMap() {
  return {
    LoginScreen.route: (context) => LoginScreen(),
    LobbyScreen.route: (context) => LobbyScreen(),
    GameScreen.route: (context) => GameScreen()
  };
}
