import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("onion") ,
          backgroundColor: Colors.red,),
      body: Column(children: <Widget>[
        Container(
          height: 300,
          width: 200,
          child: Center(
            child: Text("Price Rs 150/"),
          ),
        )
      ]),
    );
  }
}