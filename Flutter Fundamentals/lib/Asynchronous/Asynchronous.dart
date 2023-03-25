// ignore_for_file: use_key_in_widget_constructors, override_on_non_overriding_member, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print, unused_local_variable

import 'package:flutter/material.dart';

class Asynchronous extends StatefulWidget {
  const Asynchronous({super.key});

  @override
  State<Asynchronous> createState() => _AsynchronousState();
}

class _AsynchronousState extends State<Asynchronous> {
  // simulate network request

  String email = '';

  Future<void> getData() async {
    email = await Future.delayed(Duration(seconds: 3), () {
      return "sashen@gmail.com";
    });

    String user = await Future.delayed(Duration(seconds: 2), () {
      return "name: sashen, age: 21";
    });

    print(email);
    print(user);
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("other");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        toolbarHeight: 100,
        title: Text(
          'Asynchronous Programming',
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
      body: AsynchronousBody(),
    );
  }
}

Widget AsynchronousBody() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "data",
          style: TextStyle(fontSize: 22.0),
        )
      ],
    ),
  );
}
