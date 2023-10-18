import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'home');
      },
    );
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/background2.png",
                  fit: BoxFit.cover,
                )),
            Center(
              child: Image.asset("assets/images/logo.png",
                  height: 130, width: 130),
            ),
          ],
        ),
      ),
    );
  }
}
