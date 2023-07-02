import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/const.dart';

Widget tendancesWidget(context) {
  return Container(
    height: 240,
    width: MediaQuery.of(context).size.width / 2 - 32,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: const Color(0xFFFFF8D6),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                10.0,
              ), // Adjust the radius as desired
              child: Image.asset(
                "assets/images/i1.jpg",
                height: 90,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 11,
            ),
            SizedBox(
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kouassi\nFabrice",
                    style: GoogleFonts.poppins(
                      fontSize: smallHeading,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  heightSpace(5.0),
                  Text(
                    "12/06",
                    style: GoogleFonts.poppins(
                      fontSize: body,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        heightSpace(15.0),
        Text(
          "Hits du moment",
          style: GoogleFonts.poppins(
            fontSize: smallHeading,
            fontWeight: FontWeight.w700,
          ),
        ),
        heightSpace(20.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(
                    vertical: 16.0,
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
              child: const FaIcon(
                FontAwesomeIcons.play,
                size: 26,
              ),
            ),
            const SizedBox(width: 10,),
            Text(
              "Jouer",
              style: GoogleFonts.poppins(
                fontSize: smallHeading,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
