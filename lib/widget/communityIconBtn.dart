import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class CommunityIconBtn extends StatelessWidget {
  final String icon;
  final String link;
  final double height;

  const CommunityIconBtn({
    required this.icon,
    required this.link,
    required this.height,
    Key? key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: InkWell(
        child: Image.asset(
          icon,
          height: height,
        ),
        onTap: () => launchURL(link),
      ),
    );
  }
}
