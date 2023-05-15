import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrot"),
        backgroundColor: Colors.orange,),
      body: Column(children: <Widget>[
        Container(
          height: 300,
          width: 200,
          child: Center(
            child: Text("Price Rs 200/"),
          ),
        )
      ]),
    );
  }
}