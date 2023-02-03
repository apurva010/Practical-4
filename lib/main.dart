import 'package:flutter/material.dart';
import 'package:practical4/views/landing_page.dart';
import 'package:practical4/views/sign_in.dart';
import 'package:practical4/views/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical-4',
      theme: ThemeData(
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFFbc1c2b),
            ),
          ),
        ),
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFbc1c2b),
          ),
          displaySmall: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xFFbc1c2b),
          ),
          bodySmall: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFFbc1c2b),
            fontSize: 20,
          ),
          displayLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFFbc1c2b),
          ),
        ),
        fontFamily: 'hindBold',
        scaffoldBackgroundColor: const Color(0xFFbc1c2b),
        primaryColor: const Color(0xFFbc1c2b),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingScreen(),
        '/signin': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}
