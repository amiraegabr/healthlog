import 'package:flutter/material.dart';
import 'package:healthlog/auth.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const AuthPage();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(177, 221, 213, 1),
          body: Center(
            child: Image.asset("assets/logos/splashLogo.png"),
          ),
    );
  }
}