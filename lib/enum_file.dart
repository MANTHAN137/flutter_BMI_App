// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Gender { male, female, unknow }

TextStyle manthanStyle({required double size, required FontWeight weight}) {
  return GoogleFonts.poppins(
    color: Colors.white,
    fontSize: size,
    fontWeight: weight,
  );
}
TextStyle manthanStyle1({required double size, required FontWeight weight}) {
  return GoogleFonts.poppins(
    color: Colors.white,
    fontSize: size,
    fontWeight: weight,
  );
}

TextStyle manthanStyle2({required double size, required FontWeight weight}) {
  return GoogleFonts.poppins(
    color: manthanColor,
    fontSize: size,
    fontWeight: weight,
  );
}

Color manthanColor = const Color.fromARGB(255, 24, 45, 86);
Color manthanColor2 = const Color.fromARGB(255, 223, 118, 14);
