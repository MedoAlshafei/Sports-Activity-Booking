import 'package:flutter/material.dart';

import 'presentation/views/home_view.dart';
import 'presentation/views/login_view.dart';
import 'presentation/views/signup_view.dart';
import 'presentation/views/user_profile.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeViewPage(title: 'Booking App'),
        );
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginViewPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignupViewPage());
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomeViewPage(title: 'Booking App'),
        );
      case '/profile':
        return MaterialPageRoute(builder: (_) => const UserProfileView());
      default:
        return null;
    }
  }
}
