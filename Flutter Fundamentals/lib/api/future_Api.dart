// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, file_names, avoid_print

import 'package:flutter/material.dart';

import '../components/appBar/applicationBar.dart';

class FutureAPI extends StatefulWidget {
  const FutureAPI({super.key});

  @override
  State<FutureAPI> createState() => _FutureAPIState();
}

class _FutureAPIState extends State<FutureAPI> {
  Future<String> getData() async {
    String email = await Future.delayed(Duration(seconds: 3), () {
      throw Exception("server down");
      // return "sashen@gmail.com";
    });
    return email;
  }

  Future<void> getNetworkRequest() async {
    print(await getData());
  }

  @override
  void initState() {
    super.initState();
    getNetworkRequest();
    print("other");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar("Future API"),
      body: ApiBody(),
    );
  }
}

Widget ApiBody() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Future API",
          style: TextStyle(fontSize: 22.0),
        )
      ],
    ),
  );
}
