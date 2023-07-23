import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textstype01(String text1, double num, FontWeight type, Color col) {
  return Text(
    text1,
    style: GoogleFonts.poppins(
      fontWeight: type,
      color: col,
      fontSize: num,
    ),
  );
}

Widget texttype02(String text2, double num2) {
  return Text(
    text2,
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontSize: num2,
    ),
  );
}
