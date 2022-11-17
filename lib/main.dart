import 'package:flutter/material.dart';
import 'package:spotify_clone/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Spotify Clone',
        home: HomePage()
    );
  }
}

