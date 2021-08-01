import 'package:flutter/material.dart';
import 'package:the_anime_app/screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Anime App',
      home: WelcomeScreen(),
    );
  }
}
