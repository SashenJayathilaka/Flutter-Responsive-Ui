// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, sort_child_properties_last, avoid_print, unused_import, sized_box_for_whitespace, non_constant_identifier_names, override_on_non_overriding_member, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'Asynchronous.dart';

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
      title: 'Flutter Tutorial / Asynchronous Programming',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Asynchronous Programming"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Tap on this"),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return Asynchronous();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}