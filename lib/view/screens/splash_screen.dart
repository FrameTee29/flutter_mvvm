import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement any initialization tasks here (e.g., fetching data, setting up services)

    // After the initialization, navigate to the HomeScreen or any other initial screen
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      body: Center(
        // You can show your app's logo or a loading indicator here
        child: CircularProgressIndicator(),
      ),
    );
  }
}
