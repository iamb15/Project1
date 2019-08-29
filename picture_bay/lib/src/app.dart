import 'package:flutter/material.dart';

class App extends StatefulWidget{
  createState(){
    return AppStateKeeper();
  }
}

class AppStateKeeper extends State<App>{

  int myValue = 1;
  final barclr = const Color(0xFF2475B0);
  final bgclr = const Color(0xFFDAE0E2);
  final buttonColor = const Color(0xFF4834DF);
  Widget build(context){
    return MaterialApp(
    home: Scaffold(
      body: Text("$myValue"),
      backgroundColor: bgclr,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
           myValue = myValue + 1; 
          });
        },
        
        backgroundColor: barclr,
      ),
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: barclr,
      ),
    ),
  );
  }
}