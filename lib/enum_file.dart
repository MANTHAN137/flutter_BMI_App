import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Gender { male, female, shemale }

TextStyle manthanStyle({required double size, required FontWeight weight}) {
  return GoogleFonts.poppins(
    color: Colors.white,
    fontSize: size,
    fontWeight: weight,
  );
}

Color manthanColor = const Color.fromARGB(255, 24, 45, 86);
Color manthanColor2 = Colors.blue;
