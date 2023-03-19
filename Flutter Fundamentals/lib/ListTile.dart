// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, sort_child_properties_last, avoid_print, unused_import, sized_box_for_whitespace

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
      title: 'Flutter Tutorial ListView & ListTile',
      theme: ThemeData(
        // brightness: Brightness.dark,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        toolbarHeight: 100,
        elevation: 14,
        /* shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
                bottomLeft: Radius.circular(70))), */
        title: Text(
          'ListView & ListTile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                ], shape: BoxShape.circle, color: Colors.pink.shade400),
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                ], shape: BoxShape.circle, color: Colors.pink.shade400),
                child: Icon(
                  Icons.notifications,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                ], shape: BoxShape.circle, color: Colors.pink.shade400),
                child: Icon(
                  Icons.logout,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 26,
              )
            ],
          )
        ],
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text("Brightness Auto"),
              subtitle: Text("Change the Brightness"),
              trailing: Icon(Icons.menu),
              onTap: () {},
              onLongPress: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Change Image"),
              subtitle: Text("Change the Image"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text("Keyboard layout"),
              subtitle: Text("Change the keyboard Layout"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              subtitle: Text("Change the Setting"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text("Brightness Auto"),
              subtitle: Text("Change the Brightness"),
              trailing: Icon(Icons.menu),
              onTap: () {},
              onLongPress: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Change Image"),
              subtitle: Text("Change the Image"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text("Keyboard layout"),
              subtitle: Text("Change the keyboard Layout"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              subtitle: Text("Change the Setting"),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
