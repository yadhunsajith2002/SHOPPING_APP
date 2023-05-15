import 'package:flutter/material.dart';
import 'package:new_shopping/detailsview/homepage1.dart';
import 'package:new_shopping/detailsview/homepage2.dart';
import 'package:new_shopping/detailsview/homepage3.dart';

import '../detailsview/homepage.dart';

class listpage extends StatelessWidget {
  const listpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vegetables List"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage("assets/images/pototo.jpg",),),

                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage("assets/images/onion.jpg"))

                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage2()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage("assets/images/carrot.jpg"))

                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage3()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: AssetImage("assets/images/cabbage.jpg"))
                ],),
            ),
          ),
        ],
        ),
      ),),
    );
  }
}
