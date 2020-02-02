import 'package:flutter/material.dart';
import 'package:landing_page/screens/lobby_screen.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Image.asset("assets/undraw.co/mobile_login.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(hintText: "Username"),
                        validator: (value) {
                          if (value == "") return "Please fix Username.";
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Password"),
                        validator: (value) {
                          print(value);
                          if (value == "") {
                            return "Please fix Password.";
                          }

                          return null;
                        },
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LobbyScreen(),
                                ),
                              );
                            } else {
                              print("Form is not valid!");
                            }
                          },
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
