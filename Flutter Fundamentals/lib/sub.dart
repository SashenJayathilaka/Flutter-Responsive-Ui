// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace

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
      title: 'Flutter Tutorial',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.camera),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          /* flexibleSpace:
              /* Icon(Icons.photo_camera, size: 75.0, color: Colors.white70), */
              Image.asset(
            "assets/back.png",
            fit: BoxFit.cover,
          ), */
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: 'Tab One',
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
          elevation: 22.0,
          backgroundColor: Colors.pink,
          /* PreferredSize(
            child: Container(),
            preferredSize: Size.fromHeight(70.0),
          ), */
        ),
        body: TabBarView(
          children: [
            AppBodyRow(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tabOne() {
  return Container(
    child: Center(
      child: Text("TabBar View One"),
    ),
  );
}

Widget AppBody() {
  return Container(
    // margin: EdgeInsets.all(20.0),
    // padding: EdgeInsets.all(50.0),
    // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
    // padding: EdgeInsets.only(top: 200.0, bottom: 100.0),
    height: 200.0,
    // transform: Matrix4.rotationZ(0.5),
    // width: double.infinity,
    width: 200.0,
    alignment: Alignment.center,
    color: Colors.cyanAccent,
    child: Text(
      "Flutter Application Body",
      style: TextStyle(fontSize: 20.0, color: Colors.black),
    ),
  );
}

Widget AppBodyColumn() {
  return Container(
    color: Colors.cyanAccent,
    width: 300.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "text One",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "text Two",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "text Three",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

Widget AppBodyRow() {
  return Container(
    color: Colors.cyanAccent,
    // width: 300.0,
    height: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "One",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        Text(
          "Two",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        Text(
          "Three",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        Container(
          width: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.facebook,
                color: Colors.red,
                size: 40.0,
              ),
              Icon(
                Icons.reddit,
                color: Colors.red,
                size: 40.0,
              ),
              Icon(
                Icons.transfer_within_a_station,
                color: Colors.red,
                size: 40.0,
              ),
              Icon(
                Icons.wb_auto,
                color: Colors.red,
                size: 40.0,
              ),
              Icon(
                Icons.access_time_filled_outlined,
                color: Colors.red,
                size: 40.0,
              ),
              Icon(
                Icons.accessibility_outlined,
                color: Colors.red,
                size: 40.0,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
