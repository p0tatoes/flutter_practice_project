import 'package:basic_widgets_moderate/screens/about_screen.dart';
import 'package:basic_widgets_moderate/screens/index_screen.dart';
import 'package:basic_widgets_moderate/screens/login_screen.dart';
import 'package:basic_widgets_moderate/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 1024) {
                  return IndexScreen();
                } else {
                  return IndexScreenSmall();
                }
              },
            ),
        "/signup": (context) => const SignupScreen(),
        "/about": (context) => LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 1024) {
                  return AboutScreen();
                } else {
                  return AboutScreenSmall();
                }
              },
            ),
      },
    );
  }
}
