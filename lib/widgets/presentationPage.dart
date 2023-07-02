// ignore_for_file: file_names

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:radio/screens/home.dart';
import '../constants/const.dart';

Widget presentationPage(BuildContext context, title, subtitle, text, path) {
  return Container(
    padding: const EdgeInsets.all(20),
    height: MediaQuery.of(context).size.height,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: largeHeading,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                heightSpace(5.0),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: mediumHeading,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                heightSpace(15.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: body,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                heightSpace(30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false,
                    );
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 35,
                      ), // Adjust the padding as desired
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ), // Adjust the border radius as desired
                      ),
                    ),
                  ),
                  child: const Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        size: 12,
                      ),
                      FaIcon(
                        FontAwesomeIcons.chevronRight,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width:
              MediaQuery.of(context).size.width, // Adjust the width as desired
          height: 400, // Adjust the height as desired
          child: Lottie.asset(
            path, // Replace with the path to your Lottie animation file
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}
