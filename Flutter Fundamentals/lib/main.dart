// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, no_logic_in_create_state, override_on_non_overriding_member, unused_element, library_private_types_in_public_api
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter App Bar',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

// Container Widget

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
      ),
      body: Container(
        /* margin: EdgeInsets.all(20.0), */
        /* padding: EdgeInsets.all(80.0), */
        /* padding: EdgeInsets.symmetric(horizontal: 20.0), */
/*         padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0), */
        /* padding:
            EdgeInsets.only(top: 200.0, bottom: 100.0, left: 20.0, right: 20.0), */
        /* transform: Matrix4.rotationX(0.3), */
        height: 200.0,
        width: 200.0 /* double.infinity */,
        alignment: Alignment.bottomCenter,
        color: Colors.pink,
        child: Text(
          "Container Widget",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}




// App Bar

/* class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          /* flexibleSpace: Image.asset(
            "assets/back.jpg",
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
                text: 'Tab Two',
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'Tab Three',
              ),
            ],
          ),
          elevation: 22.0,
          backgroundColor: Colors.pink,
        ),
        body: TabBarView(children: [
          tabOne(),
          /* Icon(Icons.directions_car), */
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]),
      ),
    );
  }
}

Widget tabOne() {
  return Container(
    child: Center(
      child: Text("Test"),
    ),
  );
}
 */


// StatelessWidget

/* class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scaffold Widget"),
        ),
        body: Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
} */

/* class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello World'),
    );
  }
} */


/*           bottom: PreferredSize(
            child: Container(),
            preferredSize: Size.fromHeight(70.0),
          ), */