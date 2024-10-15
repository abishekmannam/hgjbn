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
              actual_app(),
              Text("History"),
            ]
            ),
          
          floatingActionButton: Row(children: [
            Expanded(child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter new item',
              ),
            ),
            )),

            ElevatedButton(onPressed: null, child: Icon(Icons.accessibility_new_sharp),)
          ],),
        ),

        

      )
      
    );
  }

}

class actual_app extends StatefulWidget{
  actual_app({super.key});

  @override
  State<actual_app> createState() => _actual_appState();
}

class _actual_appState extends State<actual_app> {
  var  items = <String>["eat", "Sleep", "work"];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text(items.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text(items[index]),
            );
          },
        );
  }
}