import 'package:flutter/material.dart';
import 'package:new_shopping/listView/lists.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>HomePageState();

}

class HomePageState extends State<HomePage>{
  var formkey = GlobalKey<FormState>();
  var isLoading = false;

  void submit(){
    final isValid = formkey.currentState!.validate();
    if(!isValid){
      return;
    }
    formkey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Grocery Shopping"),
        leading: const Icon(Icons.shopping_bag_outlined),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              const Text(
                "Login ",
                style: TextStyle(
                    fontSize: 24,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.1,

              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value){

                },
                validator: (value){
                  if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
                    return "Enter Correct Name";
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'PassWord'),
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value){
                },
                obscureText: true,
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter a Valid Password";
                  }else{
                    return null;
                  }
                },

              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.1,
              ),
              ElevatedButton(
                child: const Text(
                  "Submit",style: TextStyle(fontSize: 24),
                ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const listpage()),

      );
    }
              ),

    ],


          ),

        ),
      ),
    );

  }
}
