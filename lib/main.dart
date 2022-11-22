import 'package:flutter/material.dart';
import 'package:spotify_clone/page/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Spotify Clone',
        home: LoginPage(),
        //home: HomePage()
    );
  }
}

