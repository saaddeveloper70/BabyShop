import 'package:flutter/material.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/shping.jpg'), // Correct image source
        fit: BoxFit.fill, // Optional: Adjusts how the image fits
      ),
    ),
    child: child,
  );
}
