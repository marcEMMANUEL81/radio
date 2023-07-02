import 'package:radio/widgets/presentationPage.dart';
import 'package:flutter/material.dart';

class PresentationPage2 extends StatelessWidget {
  const PresentationPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return presentationPage(context, "Text", "SubTitle", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor", 'assets/lottieFiles/listen.json');
  }
}