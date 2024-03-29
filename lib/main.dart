import 'package:auth_ui/pages/signin.dart';
import 'package:auth_ui/pages/signup.dart';
import 'package:auth_ui/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/signin': (context) => const SignIn(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}