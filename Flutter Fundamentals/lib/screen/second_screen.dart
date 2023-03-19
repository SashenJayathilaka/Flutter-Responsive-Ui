// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, empty_constructor_bodies, prefer_initializing_formals

import 'package:flutter/material.dart';

import 'home_page.dart';

class SecondScreen extends StatelessWidget {
  String text = "";

  SecondScreen(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(
              context,
              HomePage(),
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(text, style: TextStyle(fontSize: 25.0)
                  //style: Theme.of(context).textTheme.displayMedium,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
