// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio/constants/const.dart';

Widget carouselWidget(context, String path, title, subtitle) {
  return Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              10.0,
            ), // Adjust the radius as desired
            child: Image.asset(path, height: 160, width: MediaQuery.of(context).size.width - 140, fit: BoxFit.cover,),
          ),
          heightSpace(5.0),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: smallHeading,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: body,
            ),
          )
        ],
      ),
      const SizedBox(width: 20,),
    ],
  );
}
