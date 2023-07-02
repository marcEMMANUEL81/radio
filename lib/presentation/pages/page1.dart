import 'package:radio/widgets/presentationPage.dart';
import 'package:flutter/material.dart';

class PresentationPage1 extends StatelessWidget {
  const PresentationPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return presentationPage(context, "Text", "SubTitle", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor", 'assets/lottieFiles/click.json');
  }
}