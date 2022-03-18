import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextStyle style = GoogleFonts.montserrat(
      fontWeight: FontWeight.w300,
      color: _themeProvider.lightTheme ? Colors.black : Colors.white,
    );
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      color: _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
      child: Center(
          child: RichText(
        text: TextSpan(style: style, children: [
          TextSpan(text: "Developed in "),
          TextSpan(
              text: "Flutter ",
              style: style.copyWith(color: kPrimaryColor),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launchURL("https://flutter.dev/")),
          TextSpan(text: " with 💙")
        ]),
      )),
    );
  }
}
