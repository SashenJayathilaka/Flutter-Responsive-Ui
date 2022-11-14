import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLaout;
  final Widget webScreenLaout;
  const ResponsiveLayout(
      {Key? key, required this.mobileScreenLaout, required this.webScreenLaout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          // WEB LAyOut
          return webScreenLaout;
        }
        //Mobile
        return mobileScreenLaout;
      },
    );
  }
}
