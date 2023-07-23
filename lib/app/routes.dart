import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view/screens/splash_screen.dart';
import 'package:flutter_mvvm/view/screens/home_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  // static const String module1 = '/module1';
  // static const String module2 = '/module2';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      // case home:
      //   return MaterialPageRoute(builder: (_) => HomeScreen());
      // case module1:
      //   return MaterialPageRoute(builder: (_) => Module1Screen());
      // case module2:
      //   return MaterialPageRoute(builder: (_) => Module2Screen());
      default:
        // Handle invalid routes here
        return null;
    }
  }
}
