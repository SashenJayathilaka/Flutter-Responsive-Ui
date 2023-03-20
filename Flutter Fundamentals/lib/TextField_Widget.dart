// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, sort_child_properties_last, avoid_print, unused_import, sized_box_for_whitespace, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

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
      title: 'Flutter Tutorial TextField Widget',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var items = List<String>.generate(100, (index) => 'Item $index');

  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    title.text = "Sashen Hasindu";
    String test = title.text;

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          keyboardType: TextInputType.text,
          controller: title,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                title.text = "";
              },
            ),
            border: InputBorder.none,
            filled: true,
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.white70),
          ),
        ),
      ),
      body: ApplicationBody(title),
    );
  }
}

Widget ApplicationBody(title) {
  title.text = "Sashen Hasindu";
  String test = title.text;

  return Center(
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            maxLength: 20,
            cursorColor: Colors.black,
            /* onChanged: (text) {
              print(text);
            }, */
            /* onSubmitted: (text) {
              print(text);
            }, */
            controller: title,
            // obscureText: true,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 22.0),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            maxLength: 8,
            autofocus: true,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 22.0),
            enabled: false,
          ),
        ),
      ],
    ),
  );
}
