import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To-Do",
      home: DefaultTabController(
        length: 2,

        child: Scaffold(
          appBar: AppBar(
            title: Text("To-Do List"),
            bottom: const TabBar(
              tabs: [
                Icon(Icons.check_box_outline_blank),
                Icon(Icons.history),
                
              ]
            ),
            ),

          body: TabBarView(
            children: [
              Text("Todo list"),
              Text("History"),
            ]
            ),
          
        ),

        

      )
      
    );
  }

}

class actual_app extends StatelessWidget{
  actual_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello"),
    );
  }
}