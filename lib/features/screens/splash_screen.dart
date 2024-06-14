import 'package:flutter/material.dart';
import 'package:ajitstafd/features/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Ajitaalm.png',
              height: 50,
              width: 50,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
