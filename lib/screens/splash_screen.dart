import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    nextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              'assets/images/Task_Done.json', 
              width: 200, 
              height: 200, 
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Taskati',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15), 
          const Text(
            'its time to get organized',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xffB4AAAA),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  void nextScreen() {
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AuthScreen()),
      );
    });
  }
}
