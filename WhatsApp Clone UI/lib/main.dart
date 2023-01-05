import 'package:flutter/material.dart';

import 'colors.dart';
import 'responsive/responsive_layout.dart';
import 'screen/mobile_layout_screen.dart';
import 'screen/web_layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp ui Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const ResponsiveLayout(
            mobileScreenLaout: MobileScreenLayout(),
            webScreenLaout: WebScreenLayout()));
  }
}
