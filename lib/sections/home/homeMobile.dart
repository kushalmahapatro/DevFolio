import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/themeProvider.dart';
import 'package:folio/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -width * 0.25,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset('assets/pic-blur.png', height: height),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HEY THERE! ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    Image.asset(
                      "assets/hi.gif",
                      height: height * 0.03,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Kushal",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.055,
                      color: _themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Text(
                  "Mahapatro",
                  style: GoogleFonts.montserrat(
                      color: kPrimaryColor,
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),
                    getAnimatedText(height, context)
                  ],
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.03,
                        horizontalPadding: 2.0,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
