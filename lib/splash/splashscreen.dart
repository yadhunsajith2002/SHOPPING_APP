import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_shopping/login/login.dart';

import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome1(),
    );
  }
}

class MyHome1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new HomePage(),
      title: new Text("Welcome"),
      image: new Image.asset("assets/images/grocery.png"),
      loadingText: Text("Loading....."),
      photoSize: 100.0 ,
      loaderColor: Colors.cyan,
    );
  }
}