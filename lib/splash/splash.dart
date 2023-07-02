// ignore_for_file: use_build_context_synchronously

import 'package:google_fonts/google_fonts.dart';
import 'package:radio/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:radio/presentation/presentation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    beforeGoingToNextPage();
  }

  void beforeGoingToNextPage() async {
    await Future.delayed(const Duration(seconds: 3)); // Delay of 2 seconds
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => PresentationScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 80, // Adjust the width as desired
              height: 80, // Adjust the height as desired
              child: Lottie.asset(
                'assets/lottieFiles/radio.json', // Replace with the path to your Lottie animation file
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 10,),
            Text(
              "Radio",
              style: GoogleFonts.poppins(
                fontSize: largeHeading,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
