import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/profile': (context) => ProfileScreen(
            user: ModalRoute.of(context)!.settings.arguments
                as Map<String, dynamic>),
      },
    );
  }
}
