import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon application",
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Mon application"),
        leading: new Icon(Icons.account_box),
        actions: <Widget>[
          new Icon(Icons.headset),
          new Icon(Icons.backup),
        ],
        centerTitle: true,
        elevation: 20.0,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      body: new Container(
        color: Colors.yellow,
        margin: EdgeInsets.all(10.0),
        // EdgeInsets.only(
        //   bottom: 10.0,
        //   top: 50.0,
        //   right: 20.0,
        //   left: 20.0
        //   ),
        // padding: EdgeInsets.all(10.0),
        child: new Center(
          child: new Card(
            color: Colors.deepPurpleAccent,
            elevation: 5.0,
            child: new Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}
