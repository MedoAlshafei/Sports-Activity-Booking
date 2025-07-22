import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sports_activity_booking/views/home_view.dart';
import 'package:sports_activity_booking/views/login_view.dart';
import 'package:sports_activity_booking/views/signup_view.dart';
import 'themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sport Booking App',
        theme: LightTheme.theme,
        // darkTheme: DarkTheme.theme,
        themeMode: ThemeMode.system,
        initialRoute: '/login',
        routes: {
          '/': (context) => const HomeViewPage(title: 'Booking App'),
          '/login': (context) => const LoginViewPage(),
          '/signup': (context) => const SignupViewPage(),
          '/home': (context) => const HomeViewPage(title: 'Booking App'),
        },
      ),
    );
  }
}
