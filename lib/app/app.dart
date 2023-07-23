// Contains files related to the overall application setup and configuration.
// he entry point of your Flutter application where you initialize the app and set up routing.

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/app/routes.dart';
import 'package:flutter_mvvm/app/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute:
          AppRoutes.splash, // Set the splash screen as the initial route
    );
  }
}
