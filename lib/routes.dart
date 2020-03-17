import 'package:landing_page/screens/game_screen.dart';
import 'package:landing_page/screens/lobby_screen.dart';
import 'package:landing_page/screens/login_screen.dart';

getRoutes() {
  return {
    LobbyScreen.route: (context) => LobbyScreen(),
    LoginScreen.route: (context) => LoginScreen(),
    GameScreen.route: (context) => GameScreen(),
  };
}
