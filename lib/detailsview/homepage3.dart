import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cabbage"),
      backgroundColor: Colors.green,),
      body: Column(children: <Widget>[
        Container(
          height: 300,
          width: 200,
          child: Center(
            child: Text("Price Rs 50/"),
          ),
        )
      ]),
    );
  }
}
