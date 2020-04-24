import 'package:flutter/material.dart';
import 'welcomeScreen.dart';
import 'regScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegScreen.id: (context) => RegScreen(),
      },
    );
  }
}
