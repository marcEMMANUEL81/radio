import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:radio/presentation/pages/page1.dart';
import 'package:radio/presentation/pages/page2.dart';
import 'package:radio/presentation/pages/page3.dart';
import 'package:radio/constants/const.dart';
import 'package:flutter/material.dart';

class PresentationScreen extends StatelessWidget {
  PresentationScreen({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            child: PageView(
              controller: _controller,
              children: const [
                PresentationPage1(),
                PresentationPage2(),
                PresentationPage3(),
              ],
            ),
          ),
          SizedBox(
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.deepPurple,
                      dotColor: Colors.deepPurple,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 16,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
