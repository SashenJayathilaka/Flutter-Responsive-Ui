// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers, avoid_print, unused_element

import 'package:flutter/material.dart';

class FromTest extends StatefulWidget {
  const FromTest({super.key});

  @override
  State<FromTest> createState() => _FromTestState();
}

class _FromTestState extends State<FromTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        toolbarHeight: 100,
        title: Text(
          'Flutter Form',
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
      body: ApplicationBar(),
    );
  }
}

Widget ApplicationBar() {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = "";

  Widget _buildNameField() {
    return TextFormField(
      maxLength: 20,
      decoration: InputDecoration(
        hintText: "Name...",
        icon: Icon(Icons.people),
      ),
      maxLines: 1, // 2
      validator: (text) {
        if (text!.isEmpty) {
          return "Name Cannot be empty";
        }
        return null;
      },
      onSaved: (text) {
        _name = text!;
      },
    );
  }

  return SingleChildScrollView(
    child: Form(
      key: _formKey,
      child: Container(
        margin: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            _buildNameField(),
            const SizedBox(
              height: 100.0,
            ),
            Container(
              child: TextButton(
                child: Text("Save"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    print(_name);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
