import 'package:weather_predict/themes.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

final kBorderRadius = BorderRadius.circular(20.0);

final kHeading1Dark = GoogleFonts.montserrat(
    color: kPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600);
final kHeading2Dark = GoogleFonts.montserrat(
    color: kPrimaryColor, fontSize: 25, fontWeight: FontWeight.w600);
final kHeading3Dark = GoogleFonts.montserrat(
    color: kPrimaryColor, fontSize: 20, fontWeight: FontWeight.w600);
final kHeading4Dark = GoogleFonts.montserrat(
    color: kPrimaryColor, fontSize: 18, fontWeight: FontWeight.w600);
final kHeading1Light = GoogleFonts.montserrat(
    color: Colors.white, fontSize: 32, fontWeight: FontWeight.w600);
final kHeading2Light = GoogleFonts.montserrat(
    color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600);
final kHeading3Light = GoogleFonts.montserrat(
    color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);
final kHeading4Light = GoogleFonts.montserrat(
    color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);

void kShowSnackBar(BuildContext context, String content, bool noError) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: noError ? Colors.green : Colors.redAccent,
    content: Text(
      content,
      style: TextStyle(color: Colors.white, letterSpacing: 0.5),
    ),
  ));
}

void kShowToast(BuildContext context, String title, Color color) {
  Fluttertoast.showToast(
      msg: title,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP_RIGHT,
      backgroundColor: color,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      fontSize: 18.0);
}
