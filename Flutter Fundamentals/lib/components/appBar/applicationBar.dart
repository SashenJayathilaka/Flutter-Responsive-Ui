// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

AppBar ApplicationBar(topic) {
  return AppBar(
    backgroundColor: Colors.pink.shade400,
    toolbarHeight: 100,
    title: Text(
      topic,
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
  );
}
