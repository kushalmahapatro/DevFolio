import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Widget getAnimatedText(double height, BuildContext context) {
  final _themeProvider = Provider.of<ThemeProvider>(context);

  TyperAnimatedText animatedText(
      double height, ThemeProvider _themeProvider, String text) {
    return TyperAnimatedText(text,
        speed: Duration(milliseconds: 50),
        textStyle: GoogleFonts.montserrat(
          fontSize: height * 0.03,
          fontWeight: FontWeight.w200,
          color: _themeProvider.lightTheme ? Colors.black : Colors.white,
        ));
  }

  return AnimatedTextKit(animatedTexts: [
    animatedText(height, _themeProvider,
        " Mobile Applicaton Developer (Flutter/Android/iOS)"),
    animatedText(height, _themeProvider, " UI/UX Enthusias"),
    animatedText(height, _themeProvider, " Devsigner"),
  ]);
}
