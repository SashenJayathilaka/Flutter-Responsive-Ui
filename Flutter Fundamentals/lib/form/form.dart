// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers, avoid_print, unused_element

import 'package:flutter/material.dart';

class From extends StatefulWidget {
  const From({super.key});

  @override
  State<From> createState() => _FromState();
}

class _FromState extends State<From> {
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
  String _email = "";
  String _number = "";
  String _password = "";

  Widget _buildNameField() {
    return TextFormField(
      maxLength: 20,
      decoration: InputDecoration(
        hintText: "Name...",
        icon: Icon(Icons.people),
      ),
      maxLines: 1, // 2
      validator: (text) {
        return HelperValidator.nameValidate(text!);
      },
      onSaved: (text) {
        _name = text!;
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      maxLength: 20,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email...",
        icon: Icon(Icons.email),
      ),
      maxLines: 1, // 2
      validator: (text) {
        if (text!.isEmpty) {
          return "Email Cannot be Empty";
        }
        return null;
      },
      onSaved: (text) {
        _email = text!;
      },
    );
  }

  Widget _buildNumberField() {
    return TextFormField(
      maxLength: 20,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "PhoneNumber...",
        icon: Icon(Icons.phone),
      ),
      maxLines: 1, // 2
      validator: (text) {
        if (text!.isEmpty) {
          return "PhoneNumber Cannot be empty";
        }
        return null;
      },
      onSaved: (text) {
        _number = text!;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      maxLength: 20,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password...",
        icon: Icon(Icons.password),
      ),
      maxLines: 1, // 2
      validator: (text) {
        if (text!.isEmpty) {
          return "Password Cannot be empty";
        }
        return null;
      },
      onSaved: (text) {
        _password = text!;
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
            _buildEmailField(),
            _buildNumberField(),
            _buildPasswordField(),
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
                  } else {
                    print("not Valid");
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

class HelperValidator {
  static String? nameValidate(String value) {
    if (value.isEmpty) {
      return "Name can't be Empty";
    }
    if (value.length < 2) {
      return "name must be at leasts 2 chanters long";
    }
    if (value.length > 50) {
      return "Name must be less than 50 characters long";
    }
    return null;
  }
}
