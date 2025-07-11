import 'package:flutter/material.dart';
import 'package:sports_activity_booking/screens/home_screen.dart';
import 'package:sports_activity_booking/screens/login_screen.dart';
import 'package:sports_activity_booking/screens/signup_screen.dart';
import 'themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sport Booking App',
      theme: LightTheme.theme,
      // darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system,
      initialRoute: '/home',
      routes: {
        '/': (context) => const MyHomePage(title: 'Booking App'),
        // '/login': (context) => const LoginScreen(),
        // '/signup': (context) => const SignupScreen(),
        '/home': (context) => const MyHomePage(title: 'Booking App'),
      },
    );
  }
}
