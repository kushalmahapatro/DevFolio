import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(),
      tablet: Container(),
      desktop: Container(),
    );
  }
}
