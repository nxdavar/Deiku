import 'package:flutter/material.dart';
import 'package:vitamindtime/nav.dart';
import 'package:vitamindtime/login_screen.dart';

void main() {
  runApp(Center(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vitamin D Time',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        LoginScreen.id: (context) => LoginScreen(),
        Nav.id: (context) => Nav(),
      },
    );
  }
}
