import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buttonWidget(IconData icon) {
  return ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(
          25,
        ), // Adjust the padding as desired
      ),
      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
      elevation: MaterialStateProperty.resolveWith((states) => 0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ), // Adjust the border radius as desired
        ),
      ),
    ),
    child: Row(
      children: [
        FaIcon(
          icon,
          size: 42,
        ),
      ],
    ),
  );
}
