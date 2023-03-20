// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, sort_child_properties_last, avoid_print, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'form-test.dart';
import 'form.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial Flutter Form',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: From(),
    );
  }
}
