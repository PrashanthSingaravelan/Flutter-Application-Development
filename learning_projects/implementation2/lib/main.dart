import 'package:flutter/material.dart';

import 'audio_page.dart';
import 'home_page.dart';
import 'translated_page.dart';

void main() {
  runApp(const MyApp());
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget
        '/home': (context) => const MyHomePage(title: 'Home Page'),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/translate': (context) => const TranslatedScreen(),
        '/audio': (context) => const AudioScreen(),
      },
    );
  }
}