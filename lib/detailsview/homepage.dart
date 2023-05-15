import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Potato"),
        backgroundColor: Colors.yellow,
      ),
      body: Column(children: <Widget>[
        Container(
          height: 300,
          width: 200,
          child: Center(
            child: Text("Price Rs 100/"),
          ),
        )
      ]),
    );
  }
}
