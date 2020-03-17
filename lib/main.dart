import 'package:flutter/material.dart';
import 'package:landing_page/routes.dart';
import 'package:landing_page/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      initialRoute: LoginScreen.route,
      routes: getRouteMap(),
    );
  }
}
